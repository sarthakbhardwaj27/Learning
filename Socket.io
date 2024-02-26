## #Why websockets?

#1 For applications like chat, we want to maintain a continuous connection with the user. 

If we were using http connection then client and server will commnicate but it can only be initiated by client side. So client will send http request and server will send a response. But as soon as response has been sent, the connection will break, this is not good. 

So in case there any multiple users, they will use “polling” techinque and each second ping the server asking if there is any msg for them. 

So 1000 clients will ping the server each second and ask it if there is any msg. this is overkill and can impact the server. 

So to resolve this issue, we use websockets, this helps maintain a continuous connection with client and server

#2 also http protocol has a 1 on 1 messaging, like client only can send the msg or initiate the communication. Server cant do this. Also they can only send 1 msg at a time. 

## #What are websockets?

→ they are bidirectional, low-latency, event based communication between client and server

→ it is just a protocol rather an upgraded version of http, we upgrade to websocket by passing a header value called upgrade in http.

→ here the connection is not stopped automatically, we can close the connection as per our needs.

→ both server and client and initiate the comm and send msg

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/eb730d48-056e-4837-b5a5-f07edb5ef2eb/021c93b8-3dbe-4e60-a93f-5c93918da8e7/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/eb730d48-056e-4837-b5a5-f07edb5ef2eb/44baaef5-7bee-4425-82ca-825bfa1cd47e/Untitled.png)

## #Features

why [socket.io](http://socket.io) is better than websockets:

1) Long polling fallback - the connection will fall back to back to http long-polling in case the websocket connection cannot be established (main feature)

2) automatic reconnection: