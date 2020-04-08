import http.server
import socketserver

PORT = 8080
Handler = http.server.SimpleHTTPRequestHandler

class MyServer(socketserver.TCPServer):
    allow_reuse_address = True

with MyServer(("", PORT), Handler) as httpd:
    print("serving at port", PORT)
    httpd.serve_forever()
