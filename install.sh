#!/bin/bash

echo Starting Abluent installation...
WD=`pwd`
cd abluent-awesome   && ./install.sh
cd $WD
cd abluent-conky     && ./install.sh
cd $WD
cd abluent-gtk       && ./install.sh
cd $WD
cd abluent-audacious && ./install.sh
cd $WD
echo "Abluent installation complete!"
