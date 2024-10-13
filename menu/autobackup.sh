#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYw.> M��pp�����߾����PD@  P�N�9\u��m��3[`�SD���=�l���#�F12z����@�i��G��Q�P?TC@d��@h z�  �E?ʚ��4�4��d�i�ѣC���2Rz<
6��dC@ 4 4@@�h �(
aG����dh�ɦ�i�`�Q��6���z��������̜�<|����Ye��f?����!|�]I$�ܪh�z�Dm��(��p�8|gT��/`��e�\��bcx��r�Syy��hɺ�ؒzG�S��WJ:e�$ ?�    f	P�  ��33H�J�=R8�噵�ؼ��+����j62�U>�Թeb�EE[��(���M��+4��wGj���1�e)JR�333>	���4p)K����p�z�:E1��XV��L�A�B��ݗw��0̐Ǖ�यF뮺�{�x���~틦>�;.�T)Q肯N4+;��(@����=��EYu�#<�4iI�F�
�l��",��@���y!ß�z� ͺS��#��d��6����S0kN�)߆��&ݭ��M�[��n�n��(PV�	1�B@G����z�љ�)B�0�W+R��+
°�+�+��3F�`�0V°�/r�=�"���<��lf��UY�rL�b[4��,���++"J�,�*)d[�sT}��� [�/^�G!��^��s�꫼��� MXk�zI�� ȭGv[S�-�A]���me��vx�pȃa���[MWC׉������ѯ2#,B0���g-��(�ۀ�DOM�#KڱE<ūD7�d	�,4�39�Ŏf8&e϶�5�ܞ(�(�D�h�5��]z(8�.D>M�xMՊ|�%�~���d���f�i�@    ։��햪T258����!�,Z�|q�\ĝg����H����Ʉգ��g���KGZ�K���P�����-K�-V8��4|�.�)�\�g��h�L��m�вy�(��Yi�Yj������tc̖(n�j���J7���Q�cQ�^�1y�{��d��g�20cF�kk�Nr̮9�AJ�5蔒`h#8$q���Z��{{^#m��f1BD%�`�o��! �V�B��#2��B�&�A2���yI)����� �4l��*Y��1���.Ӏ����{q_G��>�Y��X��dm<J��8�d
&�~Ӗk���j�WR�愫��`�&���[� �{(f�6�E"��3��iA�ś^���\�P�9�ʻ5�t(��JC�k�g��Dќ.�I= �{!�<�m�%(Iv����HxDs����DQ�*0=��*:�/
r��j�!x��)��p9�