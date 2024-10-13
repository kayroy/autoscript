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
BZh91AY&SYW� ߀@|���?�ߏ����`<��R   
���=L  M �  ��41�0�L �F��2d��bh�#0�0Mdh�"�jzz���������4=@�M4x�z�F��&MF&�04ѦF�`�"1M��
lSĚ<��M0Gf��W	�����׵�pm9:Q�	D���p�'�5��Ѝ�:��}?ds�^7��ν���G���m �.d^;��s��W������\	�Zp�9����%����Њl��Q�D>N�f�n�9�/�&�校�JV�<n�	�
g`T�H�tL2J�tz���]%Ҕf�sJh����0y[_d`	�o4��pȖ��	B�53X�����#6.Zi�����G��Z �m�b���V�.֨�:|G�7a�U��/�P�z�.�C:�DX������r9{�f�����G�HM��-7����w�x�8�;�M��Q?V<t�m�q2�,�Ğ2��ǒG0�F�f�A���xLJ�����EBK;�[�5�Z_?x/y7�(T\O!��X�#�>��3�y����?k�j>��k>Ë[?���m����0.}�C�,oO����ω�����Krs(�(]�g�u7���M'Q�G��m3?�lio*wq|����~%��ٱ��j]ġ�=Ok��y&��y����=q��x������I�����wNaT��3C�����Ŏ�o���ߣ�cm�|ێ�f��5I�M/�d���{�S�ղ�6>��֛���h�rΏ�~	�Ùf)�]p�[l��Ӹg�5*V}��0��sR���݋�w�m�n����:�sR�����ߺ��2𪪢��բ8�T�YS�Rzh��.�+K[��?c	���X�s��d����K%����T����y�\�{0�<���u�TO#t��V����W=�n��xd�y�uɒz)2bb]�naeo�xs<��Z�Y���Nɩ~Ŏ�"�F����v�\��nc���Z��TTTUyF��)*G]q�ڞ��5AJx���GR�6y\&ѯ�N�mR�:6/Nv��f���L�&7���K,�Z�ђf��	8�|w���>uѩ6����u�8z�-m5�4��ɝ�����U�{�4R��l�j��۪&�(�[��c|�Lo�c;v4�k�H�$�h���eRN�9��moh��"��N��^<{�y��3��T�NM�D^z��-19_�a�^?�JSGT\�ͅ��4oz�Do��tx�t$�/5�)�Eҩ/!{ҔsH�/�:-T["�/b�8�k,z*B�'dIۡ�<�؝�Y0R�d���7�R�3Bͦ��=����5������ڒ�#e�#���H����6d8�/]o<�o���ɻ#[]6V���#��7�u�L%��T�������;�Ĵ�(׷��k�C)�ŉ���ܑN$�,@