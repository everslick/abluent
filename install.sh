#!/bin/bash

echo Starting Abluent installation...
cd abluent-awesome && install.sh
cd abluent-conky && install.sh
cd abluent-gtk && install.sh
cd abluent-audacious && install.sh
echo "Abluent installation complete!"
