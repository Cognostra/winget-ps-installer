A user-friendly PowerShell script that allows you to install, uninstall, and manage applications on your Windows system using the `winget` package manager. The script organizes applications into categories, making it easy to find and install the software you need.

![PowerShell GUI](https://i.ibb.co/LRkF7k1/image-2.png)

## Features

- **Categorized Applications**: Applications are organized into categories such as Productivity, Web Browsers, Development Tools, Communication, Media, Security, System Utilities, File Management, Gaming, and Design & Creativity.
- **Search Functionality**: Quickly find applications using the search bar.
- **Install/Uninstall**: Easily install or uninstall selected applications with a single click.
- **Save and Load**: Save your selected applications to a file and load them later.

## Requirements

- Windows 10 or later
- PowerShell 5.1 or later
- `winget` installed (comes pre-installed on Windows 10 and later)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Cognostra/winget-ps-installer
   cd winget-ps-installer
   ./program-installer-gui.ps1
   ```
## Usage

- **Select a Category**: Click on the tabs to navigate through different application categories.
- **Search for Applications**: Use the search bar to find specific applications.
- **Select Applications**: Check the boxes next to the applications you want to install or uninstall.
- **Install/Uninstall**: Click the "Install" or "Uninstall" button to manage your applications.
- **Save/Load Selection**: Use the "Save" button to save your current selection to a file, and the "Load" button to load a previous selection.

## Tab Control Example

## Example Applications

Here are some examples of applications included in the installer:

- **Productivity**: Microsoft Office, Notion, Trello, Todoist
- **Web Browsers**: Google Chrome, Mozilla Firefox, Microsoft Edge
- **Development Tools**: Visual Studio Code, Git, Docker
- **Media**: VLC Media Player, Spotify, Audacity
- **Security**: Malwarebytes, Bitdefender, NordVPN

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.
