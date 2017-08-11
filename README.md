# brew tap to install heron , pulsar and bookkeeper

## Register Tap

```
brew tap streamlio/homebrew-formulae
```

## Install Heron

```
brew install streamlio/homebrew-formulae/heron-client
brew install streamlio/homebrew-formulae/heron-tracker
brew install streamlio/homebrew-formulae/heron-ui
brew install streamlio/homebrew-formulae/heron-api-server
brew services start heron-tracker
brew services start heron-ui
```

## Install Pulsar

```
brew install streamlio/homebrew-formulae/pulsar
brew services start pulsar
```

## Install Bookkeeper

```
brew install streamlio/homebrew-formulae/bookkeeper
brew services start bookkeeper
```
