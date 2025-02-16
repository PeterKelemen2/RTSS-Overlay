# RivaTuner Statistics Server Overlay Configuration Files

| <img src="https://imgur.com/Ra8bakI.png" width="200"> | A collection of RivaTuner Statistics Server (RTSS) overlay config files for customizable system monitoring. These pre-configured layouts display real-time CPU, GPU, RAM, and other system stats in an easy-to-read format while gaming. |
|------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|


## Installation

There are two ways to install the overlays:

### Method 1: Automatic Installation (Recommended)

1. Run the provided `Install.bat` script as **Administrator**.
2. The script will detect your RTSS installation and copy the `.ovl` files to the correct location.
3. Open RTSS and follow the **Usage** steps below.

### Method 2: Manual Installation

1. Run the `Open Folder.bat` script (or manually navigate to RTSS's overlay folder).
    - The default path is:
   ```
     C:\Program Files (x86)\RivaTuner Statistics Server\Plugins\Client\Overlays\
     ```
2. Copy all `.ovl` files from this repository into that folder.

## Usage Instructions

1. **Open** RivaTuner Statistics Server.
2. Click on `Setup`
3. Go to the `Plugins` tab.
4. Find `OverlayEditor.dll`, enable it, and double-click it.
5. In the OverlayEditor window, switch to the `Data Sources` tab and add the necessary system monitoring sources
   (e.g., MSI Afterburner).
6. Go to the `Layout` tab and click Load to select one of the provided `.ovl` configuration files.

## Troubleshooting

If the overlays don’t appear:

- Ensure that RTSS is running in the background and that no RTSS or MSI Afterburner configuration windows are open.
- Verify that MSI Afterburner or another monitoring tool is providing data.
- Restart RTSS and reload the `.ovl` file.
