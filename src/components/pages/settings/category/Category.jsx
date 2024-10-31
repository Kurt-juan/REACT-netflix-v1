import { Archive, ArchiveRestore, Pencil, Plus, Trash } from 'lucide-react'
import React from 'react'
import CategoryAddForm from './CategoryAddForm'
import CategoryTable from './CategoryTable'

const Category = () => {
    const [isAdd, setIsAdd] =  React.useState(false);
const [itemEdit, setItemEdit] = React.useState(null);

const handleAdd = () => {
  setIsAdd(true)
  setItemEdit(null)
}

  return (
   <section className='p-4'>
        <button className='btn btn-accent' onClick={(handleAdd)=> setIsAdd(true)}><Plus/>Add New</button>
        {isAdd &&  <CategoryAddForm setIsAdd = {setIsAdd}/> }     
        {<CategoryTable isAdd={isAdd}/>}

   </section>
  )
}

export default Category