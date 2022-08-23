#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�%�cmusys �RKn1���İ� #njpa��@��EQȒl��}ܦE/ҳ�N�B�O~�*3+���|���Y܉h����s�9):,!�=|�h�F |}����?�Z?��=1&�a�r%�٩R��A�!B{&%׈A|�J&�r�A:��M\���G�W�Um+N|�&�R�_�@���9H�;��%\��m�1�:I$K�+dQ+h	�,��I�޹ep�s�ii,��p���V���o�>��]����E����E�M��&5d}NPg���@j�@&�G�|�|u0�����Y�5LwQ?��#�fH���ތ����q�<���²��"�����gT5���Q��yeM�I��,�����g������K቏��w?���\��7��r3�.�l8�����  