import useQueryData from '@/components/custom-hook/useQueryData';
import { Archive, ArchiveRestore, Pencil, Plus, Trash } from 'lucide-react'
import React from 'react'

const CategoryTable = ({isAdd}) => {
  

   
  return (
   <section>
        <div className= {`table_wrapper bg-primary p-4 mt-5 rounded-md ${isAdd ? "opacity-40 pointer-events-none" : "" }`} >
        <table>
            <thead>
                <tr>
                    <td>#</td>
                    <td>Category</td>
                    <td>Year</td>
                    <td></td>
          
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>1.</td>
                    <td>Category</td>
                    <td>Available</td>
                    <td>
                        <ul className='table-action'>
                         
                            <li><button data-tooltip="Edit"><Pencil size ={15} /></button></li>
                            <li><button data-tooltip="Archive "><Archive  size ={15}/></button></li>
                            <li><button data-tooltip="Restore"><ArchiveRestore size ={15} /></button></li>
                            <li><button data-tooltip="Delete"><Trash size ={15} /></button></li>

                        </ul>
                    </td> 
                </tr>
             
            </tbody>
        </table>
    </div>

   </section>
  )
}

export default CategoryTable