synthesize -to_mapped -effort high
report power > ${OUTPUT_DIR}/${RUN}_${FILENAME}_power.rpt
generate_reports -outdir ${OUTPUT_DIR} -tag ${RUN}_${FILENAME}
write -mapped > ${OUTPUT_DIR}/mapped/${RUN}_${FILENAME}/jpeg_mapped.v
write_script > ${OUTPUT_DIR}/mapped/${RUN}_${FILENAME}/jpeg_mapped.g
write_sdc > ${OUTPUT_DIR}/mapped/${RUN}_${FILENAME}/jpeg_mapped.sdc
ls * -attribute > ${OUTPUT_DIR}/${RUN}_${FILENAME}_attributes.txt
rm /designs/ALT_MULTADD/
incr RUN
