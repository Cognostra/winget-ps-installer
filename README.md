A user-friendly PowerShell script that allows you to install, uninstall, and manage applications on your Windows system using the `winget` package manager. The script organizes applications into categories, making it easy to find and install the software you need.

![PowerShell GUI](https://www.powershellmagazine.com/wp-content/uploads/2014/06/psgui.png)

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
