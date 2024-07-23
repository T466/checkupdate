#!/bin/bash

# Verifica se há atualizações pendentes
echo "Verificando atualizações pendentes..."
sudo yum check-update > /tmp/updates.log

# Mostra o resultado da verificação
echo "Resultado da verificação de atualizações:"
cat /tmp/updates.log
