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
BZh91AY&SY�u�� �_�Dp�����������PD@  `
���t��]{��ZA�l�f�J  i��  �     M*{R~CT`4A�# ɓi� M&8 h@M2 d hɂ MI
d�h � h    ��="��6�6�� ����ڃ@��a�F�h$P  �'���A=S��15<L��S1�&�)耾CC
!$�C�����%���Q�`B_���0rH�D���m��)T
X�uō�p����C�2�~]�(��Qk���H�vh��,`�H,"�I��rF�7��˜�$�ʪ���Xא �� ,I��?K|�=ْ&�� ��~_�/�JTs�������򔫕N�B��A~��誖lq0.6'#���_����5�!�dCc��l����o�Ĵ$��2Q<�A�i46���a�F#K�/u��£9�[��1�b���A�m�FB{�����t�C����T�P�DC��u!���u������!VV~R�ɵ��ݣFp�l9L><���8$�~p���m���/�=��1���!r�D����W�Y�frK�(72�ܡ�a1r�AX|e�h��e>�J̽��@��B"�wzRvD�(�+�9N(1H��R��*��eB��6)�\eg��k�cy:�[UG<!��HR˚�E@��45|��Ѷ�B ��@�����@��[C�<bo�N[�H,I\�@�@ 38��0<bL�U�zL������c�\��Y��hwhhDCH�^ů���;�|���c� ۪���Ǎ�f����e�9 V�T_j���5�fU�K�!N�H�
7��Ԉ4 @�4����A��><\���Tؼ�S�����i��@L<'S�'���n�@�K� ��vF�x.�W��.�XK�<��0+�ɚ�L���y)�t��ˋ�+�#�I���Ԕ!�W��\WJ�EZ�1Y��av�!a�Zo�*d�%�t�2Պ�|Ҋ�'q�%/9%|�<���OeF3IU2_�)\�9"Z�q��Aoƴg�M
����E�a�fh�ZHך� �!r�u��}���D��Ƥj"Zɹ�HBd�I��G��̃�i2�ޏ�ZuCCZ��|�ҩ*�JS���p"q1k<}
rS 	@�bTE	XY��� i�PfR�*��N`�0�P�VQ�c���ȭyr@�4� p?��� ������լ/.�����;2@�\m�k�窪�g+͗�-�B�ƪ�5�F�J@F<p����g��h��AɠͲ=8v��@�۵Kw�Z�d�`m�%��>�&p�+����龈Vt�L������%y8�X��ڀG�⯷������
����9}�5#U�b�PE"Đ�`u�]�z�̄L��C�3�ۿ/��x���9A���������;U�=�!90�G�ꗔ��[�5KH��"D:≠ˈ=U�����Gp����&ҴI����f�sS��fE& ���R�J2&F��y�Q������w�-ZM��D|��zV3ƈ��_��B�r���>ĸ���TtjNب!�K7�lB��:d���һ�.�E@Kl6	I�A�.>���i/8*��4	X��D�[E�@p9�.@9�4�M���؍��Q ���.f^�:9��V��0BPHG:���U���]=���K�b����c�=�6�C�C�OL�.�Q�8���es1u+�v��g��M�e�i�
�0�*Xn��B�GT�s���:^�S��A�
(����i��&	�o �Bᒞ%�����@9��FKR.@���Z1�>�o����Ƿ�Yk6�qxQ*%�hB�g��U��Eq�P�xPa�E(�.�(�`��ш��A�%���
Uڹ���;��� ����.������2a;S!z �Ϥ��rJ%]u/���f��^:lA��v������!��=���uI��p�
��qQ1���I�����C�f*������G2��z�>D��r�UT**!�B�f�y(%�Kȏ_aX�R�9�""ۻ���쀬}ՈA�|mAs�$`����T���_�bؘ�:�Ww T�*�,�5�t���eTQF
�u�$.����H��B����(��M0cm��c���-z��Z�/ؐ`H�f�� ��%�!�� �N��aqxT&�*-�:����yJ��B�u� �mK`��݅�q���]9��-G�Kn� M`�� 	 `a44�("�	��K-s�|GX��X��&�ngB?zM@�t	�)��� �h$B�$�ZK��g���'�@��`<!�"�TH0ڵD�b$X$	t>"P��rE8P��u��