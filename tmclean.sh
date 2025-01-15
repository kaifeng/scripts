#/bin/bash
snapshots=$(tmutil listlocalsnapshots / | grep "com.apple.TimeMachine")
#Example: com.apple.TimeMachine.2024-05-02-122542.local
for snap in $snapshots; do
    d=$(echo $snap | awk -F. '{print $4}')
    tmutil deletelocalsnapshots $d
done
echo "Done"
