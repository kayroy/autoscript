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
BZh91AY&SY��G� �_�DP}����ޮ����P @  `���]�^�Qޝ�H����k[�44&�S�O&Dz�P�Ƨ���z��O� E%Mꞩ� �=#�=@�4i�0�b�zF@����	ES�IOF�M@��@h�A�����S�SOM�=�F���F� ����24Ѧ@b`� h�@`L�$�@&	���z Ќ� b4d�3� O�ڄ5��Eh^�>��ss���8R@&e!�%���n2��ѯV���m�؈Z��I1���	�B��J\���E��Y'F>�2�+�;k��^ުL�v�"�����)�(��83b��B)H�ZPh��M���76�m�M���h��Yک5/~��Fr�tah�r�a/J@�Z\q������Pe����w^��MS:��R-��n�R{N��Uk{-����9͆0@��Y4wœ+8�S<�ql�8�1$�lWd�P�g����s/7k��W�0o҈��ՌY{��QoOZ=���U���W�C��K�.�Q	.��\�9�h8|L�,k$���ؠ�h����؛'���i�)���S�T�%���+�����Q& ��j����e�!���D������M,G���>����*�}�;k6P����H���)rc�$R%���;z86(��2]�I^k��(-�K�R`ұ��]���S��e���C}i����a��La��v5���ufb��Å:I��Sӎ	�R.�]��B}2G�+ �'B��@��,�:V�]�o��d�y��gOA4��0B0�	�&��Ȝxr�߫�e"�LE��XD5�rSg��m�Rq&y�W8x8�z]r>FLY1<�[�[][k����V�r�n�|g(�! v�s��2��@��=��	_��u<PFWnݎJ]��3:�£K�W��NNp��V�A�m`�J}�)�]�1�$�ve� �*�K7	���Q�	n���>�|l
VCX�a:JȐ�Q������X�r�h�Z�9�H@�C�i���SR��N��{�)L˨�8o�n!���#ǤL�PEl�2τF)���~��r�wo'��7~���#n�#���Ԛ�V=�A�oga)f�L����qyU8�)�,@���@���{l��m�P����3��;�.��G\Gbj�n��g�j=$�ԤbE?D���0�hy�Rg�x�M�JK�5���ccb	��������@ƚ��Kix�� �*wS$���r���6�V�A�k�.���1�p�Ƭ3/Z%+���k�"Y�,�R�ȥ�3���(i�ɬ���m�l�7c������m9	bY�^Sۙ�7��j�y!�4&Љ�]��]�B��ι���~��.Ǽ�Z�FS��4�ɬ��"�������r�4�]�	rC0�Wxa��a���e!�{%�0����#@����N�If/d:9���G,�>cBފ��5�q5���6,�pL��c����m�"�1h�2LX%��=�Ѭ;��xd�/X	���&�=N�
�k٧�������90���<��jΪ��Ǟ� ,��u�Ю�Y	�B��%�2�ޒ��]�cD�&hl�rPTeE��htp�,e�Q�#-v�{���_�M�-�{Pf����`epa_\!%�b7�$;�\A+�A�͆���1'yZŤU=�2��&��^���/T/
2U�����D�v��l7�Br%wKp ���PVu7����*�ԏd����,�````70�����ݛ4M!��'��� �pH,������5|��3-�ވC�9JY\]P!��G���X�bbU�ZŅ���x3mv��WF0��:���G��y�_~G�ũV`1�L�n�{#��Q0���W'���7���gT��2�$>����c�|�b��1�H)0�1�,X,�ŗ�nT8 ���d�p��_Y�Jф��T��F-3	�%9A�%̠H,�9 ��"��
h�)_	̿a���G�u�y���%��"����^�
�`:[���+��Uk�v�&BJwB�3�v�pc�,�7;� 
���ɑy�5��q���J'�� ����o�Wwq�����߀�+�z��"���8�ݒ�O0w뼽��`�G`O�Jۼ4:#
#�(>���H��w$S�	?4y�