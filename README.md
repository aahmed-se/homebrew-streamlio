# brew tap to install heron , pulsar and bookkeeper

## Register Tap

```
brew tap streamlio/homebrew
```

## Install Heron

```
brew install streamlio/homebrew/heron-client
brew install streamlio/homebrew/heron-tracker
brew install streamlio/homebrew/heron-ui
brew install streamlio/homebrew/heron-api-server
brew services start heron-tracker
brew services start heron-ui
```

## Install Pulsar

```
brew install streamlio/homebrew/pulsar
brew services start pulsar
```

## Install Bookkeeper

```
brew install streamlio/homebrew/bookkeeper
brew services start bookkeeper
```
