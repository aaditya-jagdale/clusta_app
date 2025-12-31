### **Overall Summary**

This Product Requirements Document (PRD) outlines the development of **Agent Chat Flutter**, a cross-platform mobile and web application designed to serve as a high-fidelity ChatGPT-style interface for any **LangGraph** backend. The application will replicate the advanced features of the existing React-based "Agent Chat UI" while leveraging Flutter's performant UI engine. Key capabilities include persistent conversation threading via the LangGraph SDK, real-time response streaming using Server-Sent Events (SSE), and native multimodal support for images and PDF documents. The architecture emphasizes a "Bring Your Own Backend" (BYOB) model, allowing users to connect to local development servers (`langgraph up`) or secured production deployments via configurable base URLs and API keys.

---

### **Detailed Technical Explanation**

The transition from the provided React reference to a Flutter implementation requires a deep understanding of the **LangGraph SDK's protocol**. The core of the application revolves around the **Run** and **Thread** lifecycle. A `Thread` acts as the persistent state for a conversation, and a `Run` is the execution of a graph (agent) on that thread.

1. **State Synchronization:** The Flutter app must implement a robust state reducer similar to the `uiMessageReducer` found in the reference. This involves parsing a stream of events—specifically `values`, `updates`, and `messages`—and updating a local list of messages in real-time.
2. **Multimodal Protocol:** Following the logic in `use-file-upload.tsx`, files (JPEG, PNG, GIF, WEBP, and PDF) must be converted into **Content Blocks** before transmission. Unlike standard file uploads, LangGraph expects these as part of a `HumanMessage`'s `content` array, often as base64-encoded strings or managed blobs.
3. **Connection Management:** The application implements a flexible connection layer. For local development, it hits the server directly (typically `localhost:2024`). For production, it must support **API Passthrough** logic where requests are proxied through a middleware that injects the `LANGSMITH_API_KEY`, ensuring secrets are never exposed on the client side.
4. **Visibility Control:** The UI must respect backend-driven visibility tags. For instance, messages prefixed with `do-not-render-` or graphs configured with `langsmith:nostream` must be filtered out of the live chat view to allow for internal agent "thought" processes that shouldn't be visible to the user.

---

# **Product Requirements Document (PRD): Agent Chat Flutter**

**Version:** 1.0

**Status:** Draft

**Target Platform:** iOS, Android, Web

---

## **1. Introduction**

### **1.1 Project Overview**

Agent Chat Flutter is a specialized client application built to interface with LangGraph-based AI agents. It aims to provide a premium, mobile-first chat experience that mirrors the fluidity of industry-leading LLM interfaces (like ChatGPT) while maintaining strict compatibility with the LangGraph SDK and its stateful orchestration features.

### **1.2 Purpose of Document**

This document serves as the "source of truth" for the development team and the AI code assistant. It defines the functional requirements, technical architecture, and UI/UX specifications based on the existing React codebase reference provided.

---

## **2. Product Goals & Vision**

* **Universal Compatibility:** Connect to any LangGraph server regardless of the underlying LLM (Claude, GPT, Gemini).
* **High Performance:** Eliminate "lag" between agent generation and UI rendering using optimized SSE parsing.
* **Multimodal Excellence:** Provide a seamless experience for uploading and analyzing complex file types (Images and PDFs).
* **Configuration Flexibility:** Allow rapid switching between local development environments and production deployments.

---

## **3. User Experience (UX) & Interface (UI)**

### **3.1 Design Philosophy (The ChatGPT Clone)**

The UI should feel familiar to users of modern AI tools. It utilizes a clean, minimal aesthetic with a focus on typography and whitespace.

* **Chat Canvas:** A centered message list with distinct avatars for "Human" and "AI".
* **Adaptive Sidebar:** A collapsible history panel on the left (for mobile, a drawer) that lists previous threads.
* **Smart Input:** A expanding text field with a "plus" button for attachments and a "send" arrow that changes state during streaming.

### **3.2 Key Components**

* **Connection Setup Screen:** A first-launch or settings screen to input `Deployment URL`, `Assistant/Graph ID`, and `LangSmith API Key`.
* **The Message Bubble:**
* **Markdown Support:** Full rendering of code blocks, tables, and lists.
* **Tool Calling View:** A specialized UI element to show when the agent is "using a tool" (e.g., searching the web or running code).
* **Attachment Preview:** Thumbnail previews for images and icon-based previews for PDFs.



---

## **4. Functional Requirements**

### **4.1 Server Connection & Initialization**

* **URL Discovery:** The app must validate the LangGraph server status via the `/info` endpoint upon connection.
* **Environment Defaults:** Support for hardcoded environment variables (`API_URL`, `ASSISTANT_ID`) to bypass the setup form in production builds.

### **4.2 Thread & Conversation Management**

* **Automatic Threading:** If a user starts a chat without a `thread_id`, the app must call `POST /threads` to create a new session.
* **History Persistence:** Fetch and display the last 100 threads using `POST /threads/search`.
* **Thread Identification:** The app must distinguish between `assistant_id` and `graph_id` using UUID validation to ensure correct metadata is sent during thread searches.

### **4.3 Messaging & Real-time Streaming**

* **SSE Parsing:** The app must maintain a persistent HTTP connection to `POST /threads/{id}/runs/stream`.
* **Stream Modes:** Support `messages` and `values` stream modes to receive both incremental token updates and final state updates.
* **Optimistic UI:** Immediately add the user's message to the list before the server responds.

### **4.4 Multimodal Input Handling**

* **Supported MIME Types:** JPEG, PNG, GIF, WEBP, and PDF.
* **Content Block Protocol:**
* Images must be converted to `image_url` blocks with data URIs.
* PDFs must be handled as `file` blocks with appropriate metadata.


* **Duplicate Prevention:** Logic to prevent the same file from being uploaded multiple times in a single message.

### **4.5 Message Filtering & Privacy**

* **Render Filtering:** Do not display any message where the `id` starts with `do-not-render-`.
* **No-Stream Tags:** Respect `langsmith:nostream` tags to prevent broken UI updates during internal agent iterations.

---

## **5. Technical Architecture (Flutter Implementation)**

### **5.1 Frontend Stack**

* **Language:** Dart 3.x
* **Framework:** Flutter
* **Networking:** `Dio` for standard REST calls; `flutter_client_sse` or `dio_sse` for streaming.
* **State Management:** `Provider` or `Riverpod` for global configuration; `Bloc` or `ChangeNotifier` for per-thread message streams.

### **5.2 LangGraph API Study & Endpoint Specification**

To function correctly, the Flutter app must interact with these specific endpoints on the LangGraph server:

#### **A. Server Information**

* **Endpoint:** `GET /info`
* **Usage:** Validates server health and retrieves available graph definitions.

#### **B. Thread Operations**

* **Create:** `POST /threads`
* *Payload:* `{"metadata": {}}`


* **Search:** `POST /threads/search`
* *Payload:* `{"metadata": {"assistant_id": "UUID"}, "limit": 100}`.


* **Get State:** `GET /threads/{thread_id}/state`
* *Usage:* Used to resume a conversation and populate the history when a user clicks an old thread.



#### **C. Run Operations (The Core Loop)**

* **Stream Run:** `POST /threads/{thread_id}/runs/stream`
* *Payload:* ```json
{
"assistant_id": "agent",
"input": { "messages": [...] },
"stream_mode": ["messages", "values"],
"multimodal": true
}
```

```


* *Mechanism:* A long-lived connection returning data chunks.



---

## **6. Detailed Logic Flows**

### **6.1 The "First Message" Flow**

1. User enters text and attaches an image.
2. App checks if `currentThreadId` exists. If not, it calls `POST /threads`.
3. App converts the image to a base64 string and constructs a `HumanMessage` object with a list of content blocks.
4. App calls `/runs/stream`.
5. As `data` packets arrive:
* If `event: messages`, append the `content` to the last message if it's an AI message.
* If the message `id` starts with `do-not-render-`, ignore it.



### **6.2 Production Proxy Flow**

1. The app points to `https://my-app.com/api`.
2. Instead of sending the `apiKey` from the client, the request is sent to the Next.js/Flutter backend proxy.
3. The proxy injects `process.env.LANGSMITH_API_KEY` and forwards the request to the real LangGraph server.
4. The response is piped back to the Flutter app.

---

## **7. Non-Functional Requirements**

* **Security:** API keys must be stored in the device's secure storage (Keychain/Keystore), never in plain text or local storage.
* **Offline Mode:** Display a "Connection Lost" toast if the LangGraph server becomes unreachable.
* **Theming:** Support for system-level Dark Mode and Light Mode.

---

## **8. Future Roadmap**

* **Artifact Rendering:** Support for the side-panel "Artifact" view (e.g., rendering code execution results or generated charts) as described in the reference documentation.
* **Voice-to-Text:** Integration with mobile native STT (Speech-to-Text) for hands-free chat.
* **Local Graph Execution:** Potentially using `langgraph-js` or similar for offline-capable edge agents.

---

**End of Document**

*This PRD is synthesized from the core architecture of the `agent-chat-ui` repository, ensuring that every design choice in the new Flutter application maintains functional parity with the established LangChain ecosystem.*