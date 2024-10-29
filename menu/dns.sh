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
BZh91AY&SY�+�� ���D�}�����߮����PD@  PY�e{�gT`L$������ 1�6�M4d2 ����i��F�2#CL�4 � �DDAOM2����4 42P h�P�h "�F���@        ��!4&�Sd�i�Q��b�F� (mO(�%ui�oN���Y�"�����	J�Ⱥ:3ۂxػ]MT[q`dL�h}[�����Vk6ӆYŨ�f� Dd�i�WR�%����.�	`��=0⌁�'��R���o!~��>M����)�;��;���+������U.��D7�^��Ņ�*����M�EM����Z�O�l�H^�?�ʎ��u�-�3���1I"��mdg����3��*�YoN�X
9��y������׸���n�#v�8	��G8�P�3<*
L��D�g�h�6��r�*��m�~V}��#��쌁�12�-.˔2�j����^��b��$�>��Vb��^k$%�4�U�0�7"t����]	��ޣ�R�����!��)�aM��ə��
P(�ۙ��Ï�kD�*�g�H��e=�f$_�J��W=�cW�;�B��z�Ni���Z}�"��*(K �E'�d��h�~{���Q\�^s��aH2I=�"�^�磽�/E:�ˍ�Aޥ�ǲ�� #zDI"Q�u�M���cVj,%<�q�A@�%��^����HݢV�B�2���Dм��'�R��)�#�kF��;^��n�v��&a��1!��A���c��h:��3U[����]%������(��$��O�k�sHi���%J_�!�]�����)��lI�zT�3.Ƶ��;zZ1j��!��C!�A��lm�Jc����u0K���8u�UH�i���,��	@˩ĕ��`�u��*B��o����f�q��0���q���I��\�x�A�}"��E���ʩ7�B/�2�1z�^5�Y)
�LĲH'(���f�L
]!H��������0=��栩��r¦)
��HP�ԛ �<Wl@�I��Cz��H]Nca(��	تс/[�^c�ZV�٘
���~�ȴ�Qg�����(3;��9�֌�� ���+�9�ȬBa�ٚ�ã���X��t�1��A ��d�T�Q��i�p��Rd��ϱ�QY���)U8�T�D��&��y� d�H�03�i�Z �W�[&�>�Q( ct��R�^J6SH�����X���"V ���AUT�?���V({��Q�@PHhbb���"�(HF�q 