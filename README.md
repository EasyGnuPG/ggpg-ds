# Container for developing and testing GGPG

## Installation

  - First install `ds`: https://github.com/docker-scripts/ds#installation

  - Then get the scripts from github:
    ```
    git clone --branch buster \
        https://github.com/easygnupg/ggpg-ds \
        /opt/docker-scripts/ggpg-buster
    ```

  - Create a directory for the container: `ds init ggpg-buster @ggpg-buster`

  - Fix the settings: `cd /var/ds/ggpg-buster/ ; vim settings.sh`

  - Get the proper branch of *ggpg*: `git clone --branch gnupg-2.2 https://github.com/easygnupg/ggpg`

  - Create the container: `ds make`


## Other commands

   ```
   ds stop
   ds start
   ds shell
   ds help

   ds jekyll
   ds inject run-tests.sh
   ```
