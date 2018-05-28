# Container for developing and testing GGPG

## Installation

  - First install `ds`: https://github.com/docker-scripts/ds#installation

  - Then get the scripts from github:
    ```
    git clone --branch bionic \
        https://github.com/easygnupg/ggpg-ds \
        /opt/docker-scripts/ggpg-bionic
    ```

  - Create a directory for the container: `ds init ggpg-bionic @ggpg-bionic`

  - Fix the settings: `cd /var/ds/ggpg-bionic/ ; vim settings.sh`

  - Get the proper branch of *ggpg*: `git clone --branch prototype https://github.com/easygnupg/ggpg`

  - Create the container: `ds make`

  - Run the application ``python3 main.py``


## Other commands

   ```
   ds stop
   ds start
   ds shell
   ds help

   ds jekyll
   ds inject run-tests.sh
   ```
