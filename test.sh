#!/bin/bash
curl -X POST http://localhost:6000/chat -H "Content-Type: application/json" -d '{"prompt":"What is a LLM?"}'
