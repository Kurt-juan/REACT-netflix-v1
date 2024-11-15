import useQueryData from '@/components/custom-hook/useQueryData';
import NoData from '@/components/partials/icons/NoData';
import ServerError from '@/components/partials/icons/ServerError';
import LoaderTable from '@/components/partials/LoaderTable';
import ModalConfirm from '@/components/partials/modals/ModalConfirm';
import ModalDelete from '@/components/partials/modals/ModalDelete';
import ModalValidate from '@/components/partials/modals/ModalValidate';
import Pill from '@/components/partials/Pill';
import SpinnerTable from '@/components/partials/spinners/SpinnerTable';
import ToastSuccess from '@/components/partials/ToastSuccess';
import { Archive, ArchiveRestore, Pencil, Plus, Trash } from 'lucide-react'
import React from 'react'

const RatingsTable = ({isAdd, setIsAdd, setItemEdit}) => {
  const [isConfirm, setIsConfirm] = React.useState(false); //Show/Hide nang modalConfirm
  const [isDelete, setIsDelete] = React.useState(false); //Show/Hide nang modalDelete
  const [isSuccess, setIsSuccess] = React.useState(false); //Show/Hide nang toastSuccess
  const [isValidate, setIsValidate] = React.useState(false)
  const [message, setMessage] = React.useState('')
  const [id, setId] = React.useState(null);
  const [isActive, setIsActive] = React.useState(0);


    let counter = 0
    const {
        isLoading,
        isFetching,
        error,
        data: result,
      } = useQueryData(
        `/v1/ratings`, // endpoint
         "get", // method
        "ratings",

      );

      const handleArchive = (item) => {
        setIsConfirm(true)
        setIsActive(0);
        setId(item.ratings_aid)
      }
    
      const handleRestore = (item) => {
        setIsConfirm(true)
        setIsActive(1);
        setId(item.ratings_aid)
      }
    
      const handleDelete = (item) => {
        setIsDelete(true)
        setId(item.ratings_aid)}

      const handleAdd = (item) => {
        setIsAdd(true)
        setItemEdit(null)

        }

      const handleEdit = (item) => {
        setIsAdd(true)
        setItemEdit(item)
      }

  return (
   <>
        <div className= {`table_wrapper bg-primary p-4 mt-5 rounded-md ${isAdd ? "opacity-40 pointer-events-none" : "" }`} >
        {!isLoading || isFetching &&  <SpinnerTable/>}
        <table>
            <thead>
                <tr>
                    <td>#</td>
                    <td>Ratings</td>
                    <td>Year</td>
                    <td></td>
          
                </tr>
            </thead>

            <tbody>
            {((isLoading && !isFetching) || result?.data.length === 0) && (
                <tr>
                  <td colSpan="100%">
                    {isLoading ? (
                      <LoaderTable count={30} cols={6} />
                    ) : (
                      <NoData />
                    )}
                  </td>
                </tr>
              )}

           {error && (
            <tr>
                    <td colSpan="100%">
                       <ServerError/>
                    </td>
                </tr>
           )}
            {result?.data.map((item,key ) => {
                counter++
                return(
                
                <tr key={key}>
                    <td>{counter}</td>
                    <td>{item.ratings_title}</td>
                    <td><Pill isActive = {item.ratings_is_active}/></td>
                    <td>
                    <ul className='table-action'>
                            {item.ratings_is_active?
                            <>
                               <li><button data-tooltip="Edit" onClick={() => handleEdit(item)}><Pencil size ={15} /></button></li>
                               <li><button data-tooltip="Archive " onClick = {()=> handleArchive(item)}><Archive  size ={15}/></button></li>
                            </>
                            :
                            <>
                             <li><button data-tooltip="Restore" onClick = {()=> handleRestore(item)}><ArchiveRestore size ={15} /></button></li>
                             <li><button data-tooltip="Delete" onClick={() => handleDelete(item)}><Trash size ={15} /></button></li>
                            </>
                            }
                         
                         
                        </ul>
                    </td> 
                </tr>
                )}
            )}
     
            </tbody>
        </table>
    </div>
    {isConfirm && 
<ModalConfirm setIsConfirm = {setIsConfirm}
    queryKey ="ratings"
    mysqlApiArchive ={`/v1/ratings/active/${id}`}
    active={isActive}
    setIsSuccess={setIsSuccess}
/>}

{isDelete && <ModalDelete setIsDelete={setIsDelete}
    mysqlApiDelete ={`/v1/ratings/${id}`}   
    queryKey ="ratings"
    setIsSuccess={setIsSuccess}

/>}
{isSuccess && <ToastSuccess setIsSuccess={setIsSuccess}/>}
{isValidate && <ModalValidate setIsValidate={setIsValidate} message = {message}/>}
   </>
  )
}

export default RatingsTable