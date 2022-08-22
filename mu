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
�ocmusys �S[�1��)z�(aW��J��H�H!g�ĭ�ہ��g�N\ۓY����WOWW�]5ϮpGw"h&i���]'z�%�=|�+h%�F ||���s����=1������ri�i�KC�� ��}X#�3?P�i��:g���wΠ���j�*�`�����"����'.���|�6N��r	7̜�M0�P��R�YPZ��(�rx�\���,�E�:�`q�����m�e��P�����n��U.P"�FX��>E(g��( �n �d��O�o��cD� �5�2�a��N���5�E~3{>�rqz��󰻮�̲�}#������J����T	���(ix5*� M&j�G��q�4�����y1�	8�N�&�S�؅�=��{��OB������ku�o�$�ڗ�����V��#�^  