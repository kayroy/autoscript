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
BZh91AY&SY)ꨌ _�tP}����������PD@  `�|������;����]
��2@�h�'�ڦ�)�Jy#&��=4�M�44ɧ��$��F�"z�)�i4� ���d  �h s&� FA�L1 Ѧ�����)�j#ڧ��S�zO( d ��  �H�h ��=  i� M��y�hM&	�'��mLM=FF�  �2AH�&�����U�@o�LM#�G�^���Y��E�F5�uh|@��k���	�^���*���gf�������g��m�$�� }�)eiI��
:��|�M$�-����dN�p`A˛Jz #WS�i��P�o;�e����ۨ�r_}���uA����\��(16�%bo�fM.�`D��0$	ƣSp��q�d�����T����N&ԞLv+ܶ��25�k��pq�ay�50l��yD�:\s[C�i�=���8幞e6-��,�ᜁUc�]�~�+NX�u�$s$�Ь��i�\���PV��z��H?GGk��Ӫ�不�b�W:z3�@;���bPd���v����N�ubٷY��,Z-��� ��c�o	���bH����U��J�i�dA*խ���i6�M��� �z�B��/�ŰB3��WZ����M���+d�5���Է�QhO���8�T	�'�T
N��n{XC�+�vA�w�h
�Ί�'<�a<׋8�s���<��5�VU^]���|7��^�;fEF��
�>����K�K2 C�i�s1�j>j'z$��Nu�V�4��&D��J1�#A�,f|# ,,AHH!%�d��nN������R�b�V,S��b���:�n����x�m�9d��DH�NB� ���bHWLd�k$%îNqN3��@���{�8�30���}ڴp��L^ĕ�Z>��(8:O�ƌh���Se	��߁Vm�/���L�/Xgس2��Q�EC�o�-����ۀ䳒�|(�a�e�*Č�.��N`�R��ш�_��b�ӫ���+fR�tx�X�mP6�s�?+��{�ۚ"ԪϼJİ�9D�բ�-8�TD`�8�N%4A]��٘	�F�;d��kL�{�vr�Wa��dv�D"0��c�"� �Eo�]�?/�G�iyk哄rvH�8dAH!���>��,2��|d���ޢ�L\�>�e�#!n	T�>r�� `ٲD��VS0�R�Z��!Cz#fT�����θ��Ǣ0tN³8�`��έ^+
�s�hI	��U�a�L꩟%wRZ�XD�,��6Cw�Z��Cc�m�@|���)�����N"=���b[��&DT�,U8y��� ^�Jӎ.�I�" LI�FG�����;~L(H��n��D�7�uRV�(݇K�L�hr�|H- ��㊞a�q�Qɕ�	����������m����� 1���e�V�;y�������\���;[j,FD������ �I�R��$�r�b7�@���`���E^�A�竻^Q���`;l�xA�74�ʻ�+8�	��`[5 �2I�nmL�ON����Q�E��Uh��f,{&`9BJ%�r ����t/Y�K�b�:l}�aƈ��.� ��Yg���z��1<>Nϔ0йy����A���-�%/e/Ey����J�6)
Д'��	�.�60�����y�Z���'v��EӖ(�H�/U�6�j*S3��l�ρ$��d#4��4�����k
�[V,,M��o[��A��$s�@Q�xpq3@DRbK��EL�J��W^�8*��S69�0kL�4PA�{��p�D��ɴ�B�cvB�� �a!j���L0x�\)DI:��Vn��iM[շ���S,��57r�Sb�
����]�Ÿ�������d�fm"1
�~H���	[�ya3d2N��HΪ��B0`n�`��-Q�*E�*h�F���:4�e�}�i0�	(K�ETaJ薍�!�J!!
�F��L*�:)		�.�p� S�Q