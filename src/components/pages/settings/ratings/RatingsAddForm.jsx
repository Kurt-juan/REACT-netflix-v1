import { InputText } from '@/components/helpers/FormInputs';
import { queryData } from '@/components/helpers/queryData';
import SpinnerButton from '@/components/partials/spinners/SpinnerButton';
import { useMutation, useQueryClient } from '@tanstack/react-query';
import { Formik, Form } from 'formik';
import React from 'react'

import * as Yup from 'Yup'


const RatingsAddForm = ({setIsAdd, setIsSuccess, itemEdit, setIsValidate, setMessage}) => {
  const queryClient = useQueryClient();
  const mutation = useMutation({
    mutationFn: (values) =>
      queryData(
        itemEdit ? `/v1/ratings/${itemEdit.ratings_aid}` : `/v1/ratings`,
        itemEdit ? "put" : "post",
        values
      ),
    onSuccess: (data) => {
      // Invalidate and refetch
      queryClient.invalidateQueries({
        queryKey: ["ratings"],
      });
 
      // show error box
      if (data.success) {
        setIsAdd(false)
        setIsSuccess(true)
      } else {
        setIsValidate(true)
        setMessage(data.error)
        // dispatch(setSuccess(true));
        // dispatch(setMessage(`Record Successfully updated.`));
        // dispatch(setIsAdd(false));
      }
    },
  });
  const initVal = {
   ratings_title: itemEdit ? itemEdit.movies_title : '',
   
   ratings_title_old: itemEdit ? itemEdit.movies_title : '',
}

const yupSchema =  Yup.object ({
   ratings_title: Yup.string().required('Required'),
   


})

  return (
    <div className='my-3'>
        <Formik
          initialValues={initVal}
          validationSchema={yupSchema}
          onSubmit={async (values) => {
            mutation.mutate(values);
          }}
        >
        
          {(props) => {
            return (
              <Form className="max-w-[250px]">
            <div className="input-wrap">
            <InputText
             label="Ratings"
             type="text"
             name="ratings_title"
             disabled={mutation.isPending}
             />
            </div>

            <div className='settings-action flex justify-end gap-3 my-3'>
                <button className='btn btn-accent w-[80px] flex justify-center' type = "submit">{mutation.isPending ? <SpinnerButton/> : "Save"} </button>
                <button className='btn btn-cancel w-[80px] flex justify-center'onClick={()=> setIsAdd(false)}>Cancel</button>
            </div>
        </Form>
         );
        }}
      </Formik>
    </div>
  )
}

export default RatingsAddForm