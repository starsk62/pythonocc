//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#ifndef _NMTTools_ListIteratorOfListOfCommonBlock_HeaderFile
#define _NMTTools_ListIteratorOfListOfCommonBlock_HeaderFile

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _Handle_NMTTools_ListNodeOfListOfCommonBlock_HeaderFile
#include <Handle_NMTTools_ListNodeOfListOfCommonBlock.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_NoMoreObject;
class Standard_NoSuchObject;
class NMTTools_ListOfCommonBlock;
class NMTTools_CommonBlock;
class NMTTools_ListNodeOfListOfCommonBlock;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_ListIteratorOfListOfCommonBlock  {

public:

    void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }
 // Methods PUBLIC
 // 


Standard_EXPORT NMTTools_ListIteratorOfListOfCommonBlock();


Standard_EXPORT NMTTools_ListIteratorOfListOfCommonBlock(const NMTTools_ListOfCommonBlock& L);


Standard_EXPORT   void Initialize(const NMTTools_ListOfCommonBlock& L) ;

  Standard_Boolean More() const;


Standard_EXPORT   void Next() ;


Standard_EXPORT   NMTTools_CommonBlock& Value() const;


friend class NMTTools_ListOfCommonBlock;



protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //
Standard_Address current;
Standard_Address previous;


};

#define Item NMTTools_CommonBlock
#define Item_hxx <NMTTools_CommonBlock.hxx>
#define TCollection_ListNode NMTTools_ListNodeOfListOfCommonBlock
#define TCollection_ListNode_hxx <NMTTools_ListNodeOfListOfCommonBlock.hxx>
#define TCollection_ListIterator NMTTools_ListIteratorOfListOfCommonBlock
#define TCollection_ListIterator_hxx <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#define Handle_TCollection_ListNode Handle_NMTTools_ListNodeOfListOfCommonBlock
#define TCollection_ListNode_Type_() NMTTools_ListNodeOfListOfCommonBlock_Type_()
#define TCollection_List NMTTools_ListOfCommonBlock
#define TCollection_List_hxx <NMTTools_ListOfCommonBlock.hxx>

#include <TCollection_ListIterator.lxx>

#undef Item
#undef Item_hxx
#undef TCollection_ListNode
#undef TCollection_ListNode_hxx
#undef TCollection_ListIterator
#undef TCollection_ListIterator_hxx
#undef Handle_TCollection_ListNode
#undef TCollection_ListNode_Type_
#undef TCollection_List
#undef TCollection_List_hxx


// other Inline functions and methods (like "C++: function call" methods)
//


#endif
