import { Archive, ArchiveRestore, Pencil, Plus, Trash } from 'lucide-react'
import React from 'react'
import RatingsAddForm from './RatingsAddForm'
import RatingsTable from './RatingsTable'

const Ratings = () => {
    const [isAdd, setIsAdd] =  React.useState(false);
    const [ItemEdit, setItemEdit] =  React.useState(null);
  

      const handleAdd = () => {
        setIsAdd(true)
        setItemEdit(null)
      }
      
  return (
    <section className='p-4'>
    <button className='btn btn-accent' onClick={handleAdd}><Plus/>Add New</button>
    {isAdd &&  <RatingsAddForm setIsAdd = {setIsAdd} setItemEdit={ItemEdit}/> }     
    {<RatingsTable isAdd={isAdd} setIsAdd = {setIsAdd} setItemEdit={setItemEdit}/>}

</section>
  )
}

export default Ratings