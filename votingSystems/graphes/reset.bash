cp -f tour01.ods  tour01.ods.bak
chmod a-w *.bak

rm tour1*
rm tour0[2-9]*
rm tour01t.ods

for i in `seq -f "%02g" 2 15` ; do cp tour01.ods tour$i.ods; done

for file in tour??.ods ; do echo $file ; basename=`echo $file | cut -d . -f 1` ; cp $file ${basename}t.ods ; done


ls

for file in *.ods ; do echo $file ; libreoffice $file; done
