import websocket, asyncio, websockets

HOST = "0.0.0.0"
PORT = 8749

websockets.serve(host=HOST,port=PORT)