# Ollama Listener Service Manager

If your like my and do not want the Ollama listener service running at all times, this script will help you. 
The script manages the Ollama listener service and starts or stops the LLM llama3 model.

## Usage

You can start or stop the Ollama listener service by running the script with an argument. The available arguments are:

* `start`: Starts the Ollama listener service and runs the LLM llama3 model using `ollama run llama3`. This command executes 
`sudo systemctl start snap.ollama.listener.service` to start the service. Once the Ollama is closed the script will execute `sudo systemctl stop snap.ollama.listener.service`

* `stop`: Stops the Ollama listener service by executing `sudo systemctl stop snap.ollama.listener.service`.

You can also display this help message by running the script with the `-h` or `--help` argument.

## Example

```
$ ./llama.sh start
Starting Ollama listener service and running LLM llama3 model...
```

Or:

```
$ ./llama.sh stop
Stopping Ollama listener service...
```

## Prerequisites

* The script assumes that you have the `sudo` command available and configured correctly on your system.
* You need to have the `ollama run llama3` command installed and available in your system's PATH.

## ALIAS
To make your live easier it recommended to set up a alias in your home directory .bashrc
```
alias llama='/home/user/scripts/llama/llama.sh'
```
Doing so will allow you to execute the script from any directory
