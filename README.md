# brew tap to install heron , pulsar and bookkeeper

## Register Tap

```
brew tap streamlio/homebrew-formulae
```

## Install Heron

```
brew install streamlio/homebrew-formulae/heron
# To start Tracker
brew services start heron-tracker
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
