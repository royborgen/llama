#!/bin/bash

arg=$1

case $arg in
    -h|--help) 
       echo "Usage: llama [ARGUMENT]" 
       echo "Starts or stops the Ollama listener service and executes llama run llama3" 
       echo "" 
       echo "An argument of start or stop must be provided." 
       echo "  start                Executes sudo systemctl start snap.ollama.listener.service"
       echo "                       Starts LLM llama3 by executing ollama run llama3" 
       echo "" 
       echo "  stop                 Executes sudo systemctl stop snap.ollama.listener.service"
       echo "" 
       echo "  -h, --help           Displays this help message" 
       exit 0
   ;;
  
  start) 
     echo "Starting snap.ollama.listener.service"
     sudo systemctl start snap.ollama.listener.service
     echo "Service started" 
     echo "Starting the llama3 lanuage model"
     ollama run llama3
     echo "Lanuage model closed"
     echo "Stopping snap.ollama.listener.service"
     sudo systemctl stop snap.ollama.listener.service
     echo "Done :)"
   ;;
  
  stop) 
     echo "Stopping snap.ollama.listener.service"
     sudo systemctl stop snap.ollama.listener.service
     echo "Done :)"
   ;;
    
    *) 
       echo "A valid argument must be provided. See --help or -h for more." 
        ;;
esac

