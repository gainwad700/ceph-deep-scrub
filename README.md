# Ceph deep-scrubbing script

Dieses Skript ist dafür zuständig - deep-scrubbs manuell zu starten um so einen geeigneten Zeitraum zu finden.
Dieses Skript wird mittels Cronjobs ausgeführt.

## Wie funktioniert es?

Ein Scrubbing wird auf allen OSDs pro definierten Host ausgeführt. Das heisst, dass alle PGs (placement groups) welche auf all den OSDs pro definierten Host sind, geprüft werden.

## Ausführung

Es kann mit verschiedenen Argumenten oder einen Inventoryfile die hostnamen abarbeiten.

### Arguments

Hier ein paar Beispiele:
sh deep-scrub.sh ceph1
sh deep-scrub.sh ceph1 ceph2
sh deep-scrub.sh ceph1 ceph2 ceph3

### Inventory File

sh deep-scrub.sh < hosts


## Format der inventory Datei

cat hosts
ceph1
ceph2
ceph3
