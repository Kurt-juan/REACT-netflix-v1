import { Archive, ArchiveRestore, Pencil, Plus, Trash } from 'lucide-react'
import React from 'react'
import GenreAddForm from './GenreAddForm'
import GenreTable from './GenreTable'
import { StoreContext } from '@/components/store/storeContext'
import { setIsAdd } from '@/components/store/storeAction'

const Genre = () => {
  const {dispatch, store} = React.useContext(StoreContext)
    const [ItemEdit, setItemEdit] =  React.useState(null);
  

      const handleAdd = () => {
        dispatch(setIsAdd(true))
        setItemEdit(null)
      }
      
  return (
    <section className='p-4'>
    <button className='btn btn-accent' onClick={handleAdd}><Plus/>Add New</button>
    {store.isAdd &&  <GenreAddForm  setItemEdit={ItemEdit}/> }     
    {<GenreTable  setItemEdit={setItemEdit}/>}

</section>
  )
}

export default Genre