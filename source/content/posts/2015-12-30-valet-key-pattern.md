---
date: 2015-12-30
title: "Valet Key Pattern"
tags:
- patterns
---
I recently bought a new car and it came with a valet key. It's designed to secure the interior storage compartment of a car while still providing access for the car to be driven by someone other than the owner. The valet key is useful when you wish to temporarily allow some access, but do not wish to grant full access. In the application architecture world, there's a design pattern with the same name that aims to increase the security and scale of your application. If you're an application architect or developer, and you've never used a Valet Key Pattern, please read on. 

### The Challenge
Applications often need to read and write files to and from storage. A more traditional scenario often includes having the application fetch the data from storage (on behalf of the client) and stream it down. Additionally, applications often provide the ability for a client to upload files. This approach consumes valuable resources on the server and creates a potential performance bottleneck as the application acts as a gatekeeper for the storage. The challenge is that applications must be able to securely control access to data in a granular way, but in a way that doesn't increase the load on the serving application.

### The Solution
One solution is to restrict access to the data store's public connection and provide the client with a "key" that the data store itself can validate. This is the theoretical valet key. It provides time-limited direct access to specific resources and allows only predefined operations such as reading and writing to storage. Applications can create and issue valet keys to clients quickly and easily, allowing clients to perform the required operations without requiring the application to directly handle the data transfer. This removes the bottleneck, and the related impact on performance and scalability. After the specified period, the key becomes invalid and revokes access to the resource.

### The Summary
Using this pattern can simplify managing access to resources. The important factors are to limit the validity period and the location of the resource, as tightly as possible so the recipient can use it for only the intended purpose.