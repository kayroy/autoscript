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
BZh91AY&SY�1�� I_�pp�����߾����PD@  P�N�����w� I3DiOҏҞ&��j�驐�i�2��SF���� E5G�Uɞ��0�  hf���Oj*��!�L� 142` F���I� 4@ h � 42 ��@"Q�6I�i�F�=M4a��i��d�h�2\��~]�ͺ������aN�?%�t�v�.�I)���ElAb#A�L�'/�Mג�}~�.Q���?��8�Z������������PB�E��:'Q���$���ڒI$�I$�"�J$�I$���fiA����+�G>,��9sa��͟�c���	�2�b�EEKEQҢ�c;�Z�s�8b�R���<���)JR	 ��Ϸ� ������Q|Z�BPV��/�3rs�I��q�����A����bsX����ᙒ����]h�����tB�6��d��oM(ą���%}�AX�����#�w�����)[nP!߈}���P�;���O�wBȈn<��,[u?f��Z
�52fY�Pe�ǂ�EH�vDo��Ppy��In�c܍�a��9�K',�HHt-(HHHHH@-��r�����a2��`�`�9�:��ʐ�c �0t�4�:;�'qS���)�R�:;�HUY�U_�J=n��V�P�P	:Y���;4�]RR�[f��Ǩ�kC�3f�s��t)��ŝ/R6�)�b���<��:�J��{�"�h� �̃S�K��5��/�)����nǇ:#8��̞S�J�m2g�h/)m�����^&lśgKM�B�brcTPt,���
��NΞ%�fN䯪��A�a�JF�^4�KQ�Ӷ'ib�X�]�!�g�վ2����     ��"%h����jE��������R��%T�ܲ�MA� F�ۚ*�9�T������g�vvd%%�ne�2���?�WM��<���l�G���(�y�dυ�*R�v�۔����KuN��4(��<����Ì�5��iU�ޥ�Cf�"�ǋA݀$5��GL�i[~��$ ��]M6 �3�Э.��-��_�v+�%�5���6B�6��CX�ID-�
�r*�h�GB���!f�m$T'�B�,c`!u��M�b���@ɿ��[�)�ʠ\�S����k>��s�y0��3��J^��tY�f��j���Ϣu�ߍ���}�[�;5�!�0T����A�!��l2�<z��8<��f�Xz������������:�
�c�����r���+nfd9���oPɪ��7p�4T�܊�!�w�H}":5���E���eQ�@� (=�.*
��?�w$S�	
�