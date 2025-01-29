# Pause Menu Logo

Interested in other scripts? Check out [Not a Tebex Shop](https://not-a-script.tebex.io/).

Join our Discord community [here](https://discord.gg/kKUYHevrBY).

# Installing Custom Logo

## Prerequisites
- OpenIV installed
- Your logo image file ready

## Step-by-Step Instructions

### 1. Open OpenIV and Enable Edit Mode
- Launch OpenIV
- Click on the "Edit Mode" button to enable editing capabilities 

### 2. Create YTD File
1. Create a new `.ytd` file in OpenIV 
2. The name you choose for this file will be used in `Config.TEXTURE_FILE`
3. Remember this filename for configuration later

### 3. Import Your Logo
1. Right-click on the newly created `.ytd` file
2. Select "Edit" from the context menu 
3. In the top-left corner of the window, locate and click the "Import" button
4. Select your logo image file to import it
5. Rename the imported texture - this name will be used in `Config.TEXTURE_DICT`

### 4. File Placement
1. Locate your generated `.ytd` file
2. Create a `stream` folder in your resource if it doesn't exist
3. Place the `.ytd` file inside the `stream` folder

### Configuration
In your script's config file, update the following values:
```lua
Config.TEXTURE_FILE = "your_ytd_filename"  -- The .ytd file name you created
Config.TEXTURE_DICT = "your_texture_name"  -- The name you gave to your imported texture
```