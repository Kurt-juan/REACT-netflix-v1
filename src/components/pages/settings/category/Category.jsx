import { Archive, ArchiveRestore, Pencil, Plus, Trash } from 'lucide-react'
import React from 'react'
import CategoryAddForm from './CategoryAddForm'
import CategoryTable from './CategoryTable'
import { StoreContext } from '@/components/store/storeContext'
import { setIsAdd } from '@/components/store/storeAction'

const Category = () => {
    const {dispatch, store} = React.useContext(StoreContext)
    const [ItemEdit, setItemEdit] =  React.useState(null);
  

      const handleAdd = () => {
        dispatch(setIsAdd(true))
        setItemEdit(null)
      }
      
  return (
    <section className='p-4'>
    <button className='btn btn-accent' onClick={handleAdd}><Plus/>Add New</button>
    {store.isAdd &&  <CategoryAddForm setItemEdit={ItemEdit}/> }     
    {<CategoryTable setItemEdit={setItemEdit}/>}

</section>
  )
}

export default Category