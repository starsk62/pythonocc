/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module StepRepr

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include StepRepr_dependencies.i


%include StepRepr_headers.i




%nodefaultctor Handle_StepRepr_RepresentationContext;
class Handle_StepRepr_RepresentationContext : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_RepresentationContext();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext(const Handle_StepRepr_RepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext(const StepRepr_RepresentationContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationContext {
	StepRepr_RepresentationContext* GetObject() {
	return (StepRepr_RepresentationContext*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_GlobalUncertaintyAssignedContext;
class Handle_StepRepr_GlobalUncertaintyAssignedContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_GlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext(const Handle_StepRepr_GlobalUncertaintyAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext(const StepRepr_GlobalUncertaintyAssignedContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_GlobalUncertaintyAssignedContext {
	StepRepr_GlobalUncertaintyAssignedContext* GetObject() {
	return (StepRepr_GlobalUncertaintyAssignedContext*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ParametricRepresentationContext;
class Handle_StepRepr_ParametricRepresentationContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ParametricRepresentationContext();
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext();
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext(const Handle_StepRepr_ParametricRepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext(const StepRepr_ParametricRepresentationContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ParametricRepresentationContext {
	StepRepr_ParametricRepresentationContext* GetObject() {
	return (StepRepr_ParametricRepresentationContext*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ShapeAspectRelationship;
class Handle_StepRepr_ShapeAspectRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ShapeAspectRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship(const Handle_StepRepr_ShapeAspectRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship(const StepRepr_ShapeAspectRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspectRelationship {
	StepRepr_ShapeAspectRelationship* GetObject() {
	return (StepRepr_ShapeAspectRelationship*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_HArray1OfMaterialPropertyRepresentation;
class Handle_StepRepr_HArray1OfMaterialPropertyRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_HArray1OfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation(const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation(const StepRepr_HArray1OfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HArray1OfMaterialPropertyRepresentation {
	StepRepr_HArray1OfMaterialPropertyRepresentation* GetObject() {
	return (StepRepr_HArray1OfMaterialPropertyRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ProductDefinitionUsage;
class Handle_StepRepr_ProductDefinitionUsage : public Handle_StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ProductDefinitionUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage(const Handle_StepRepr_ProductDefinitionUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage(const StepRepr_ProductDefinitionUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ProductDefinitionUsage {
	StepRepr_ProductDefinitionUsage* GetObject() {
	return (StepRepr_ProductDefinitionUsage*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_MakeFromUsageOption;
class Handle_StepRepr_MakeFromUsageOption : public Handle_StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_MakeFromUsageOption();
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption();
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption(const Handle_StepRepr_MakeFromUsageOption &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption(const StepRepr_MakeFromUsageOption *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MakeFromUsageOption {
	StepRepr_MakeFromUsageOption* GetObject() {
	return (StepRepr_MakeFromUsageOption*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_RepresentationRelationship;
class Handle_StepRepr_RepresentationRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_RepresentationRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship(const Handle_StepRepr_RepresentationRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship(const StepRepr_RepresentationRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationRelationship {
	StepRepr_RepresentationRelationship* GetObject() {
	return (StepRepr_RepresentationRelationship*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ShapeRepresentationRelationship;
class Handle_StepRepr_ShapeRepresentationRelationship : public Handle_StepRepr_RepresentationRelationship {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ShapeRepresentationRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship(const Handle_StepRepr_ShapeRepresentationRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship(const StepRepr_ShapeRepresentationRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeRepresentationRelationship {
	StepRepr_ShapeRepresentationRelationship* GetObject() {
	return (StepRepr_ShapeRepresentationRelationship*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_RepresentationRelationshipWithTransformation;
class Handle_StepRepr_RepresentationRelationshipWithTransformation : public Handle_StepRepr_ShapeRepresentationRelationship {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_RepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation(const Handle_StepRepr_RepresentationRelationshipWithTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation(const StepRepr_RepresentationRelationshipWithTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationRelationshipWithTransformation {
	StepRepr_RepresentationRelationshipWithTransformation* GetObject() {
	return (StepRepr_RepresentationRelationshipWithTransformation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_Representation;
class Handle_StepRepr_Representation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_Representation();
		%feature("autodoc", "1");
		Handle_StepRepr_Representation();
		%feature("autodoc", "1");
		Handle_StepRepr_Representation(const Handle_StepRepr_Representation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation(const StepRepr_Representation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_Representation {
	StepRepr_Representation* GetObject() {
	return (StepRepr_Representation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ProductConcept;
class Handle_StepRepr_ProductConcept : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ProductConcept();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept(const Handle_StepRepr_ProductConcept &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept(const StepRepr_ProductConcept *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ProductConcept {
	StepRepr_ProductConcept* GetObject() {
	return (StepRepr_ProductConcept*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_PropertyDefinitionRelationship;
class Handle_StepRepr_PropertyDefinitionRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_PropertyDefinitionRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship(const Handle_StepRepr_PropertyDefinitionRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship(const StepRepr_PropertyDefinitionRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PropertyDefinitionRelationship {
	StepRepr_PropertyDefinitionRelationship* GetObject() {
	return (StepRepr_PropertyDefinitionRelationship*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation;
class Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation(const StepRepr_HSequenceOfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation {
	StepRepr_HSequenceOfMaterialPropertyRepresentation* GetObject() {
	return (StepRepr_HSequenceOfMaterialPropertyRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_AssemblyComponentUsage;
class Handle_StepRepr_AssemblyComponentUsage : public Handle_StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_AssemblyComponentUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage(const Handle_StepRepr_AssemblyComponentUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage(const StepRepr_AssemblyComponentUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_AssemblyComponentUsage {
	StepRepr_AssemblyComponentUsage* GetObject() {
	return (StepRepr_AssemblyComponentUsage*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation;
class Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation(const Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation(const StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation* GetObject() {
	return (StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_PropertyDefinition;
class Handle_StepRepr_PropertyDefinition : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_PropertyDefinition();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition(const Handle_StepRepr_PropertyDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition(const StepRepr_PropertyDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PropertyDefinition {
	StepRepr_PropertyDefinition* GetObject() {
	return (StepRepr_PropertyDefinition*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ShapeAspect;
class Handle_StepRepr_ShapeAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect(const Handle_StepRepr_ShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect(const StepRepr_ShapeAspect *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspect {
	StepRepr_ShapeAspect* GetObject() {
	return (StepRepr_ShapeAspect*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_CompositeShapeAspect;
class Handle_StepRepr_CompositeShapeAspect : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_CompositeShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect(const Handle_StepRepr_CompositeShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect(const StepRepr_CompositeShapeAspect *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_CompositeShapeAspect {
	StepRepr_CompositeShapeAspect* GetObject() {
	return (StepRepr_CompositeShapeAspect*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_RepresentationItem;
class Handle_StepRepr_RepresentationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_RepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem(const Handle_StepRepr_RepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem(const StepRepr_RepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationItem {
	StepRepr_RepresentationItem* GetObject() {
	return (StepRepr_RepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_CompoundRepresentationItem;
class Handle_StepRepr_CompoundRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_CompoundRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem(const Handle_StepRepr_CompoundRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem(const StepRepr_CompoundRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_CompoundRepresentationItem {
	StepRepr_CompoundRepresentationItem* GetObject() {
	return (StepRepr_CompoundRepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_HSequenceOfRepresentationItem;
class Handle_StepRepr_HSequenceOfRepresentationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_HSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem(const Handle_StepRepr_HSequenceOfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem(const StepRepr_HSequenceOfRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HSequenceOfRepresentationItem {
	StepRepr_HSequenceOfRepresentationItem* GetObject() {
	return (StepRepr_HSequenceOfRepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_FunctionallyDefinedTransformation;
class Handle_StepRepr_FunctionallyDefinedTransformation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_FunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation(const Handle_StepRepr_FunctionallyDefinedTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation(const StepRepr_FunctionallyDefinedTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_FunctionallyDefinedTransformation {
	StepRepr_FunctionallyDefinedTransformation* GetObject() {
	return (StepRepr_FunctionallyDefinedTransformation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_MaterialProperty;
class Handle_StepRepr_MaterialProperty : public Handle_StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_MaterialProperty();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty(const Handle_StepRepr_MaterialProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty(const StepRepr_MaterialProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MaterialProperty {
	StepRepr_MaterialProperty* GetObject() {
	return (StepRepr_MaterialProperty*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_AssemblyComponentUsageSubstitute;
class Handle_StepRepr_AssemblyComponentUsageSubstitute : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_AssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute(const Handle_StepRepr_AssemblyComponentUsageSubstitute &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute(const StepRepr_AssemblyComponentUsageSubstitute *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_AssemblyComponentUsageSubstitute {
	StepRepr_AssemblyComponentUsageSubstitute* GetObject() {
	return (StepRepr_AssemblyComponentUsageSubstitute*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_MappedItem;
class Handle_StepRepr_MappedItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_MappedItem();
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem();
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem(const Handle_StepRepr_MappedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem(const StepRepr_MappedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MappedItem {
	StepRepr_MappedItem* GetObject() {
	return (StepRepr_MappedItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_QuantifiedAssemblyComponentUsage;
class Handle_StepRepr_QuantifiedAssemblyComponentUsage : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_QuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage(const Handle_StepRepr_QuantifiedAssemblyComponentUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage(const StepRepr_QuantifiedAssemblyComponentUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_QuantifiedAssemblyComponentUsage {
	StepRepr_QuantifiedAssemblyComponentUsage* GetObject() {
	return (StepRepr_QuantifiedAssemblyComponentUsage*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_RepresentationMap;
class Handle_StepRepr_RepresentationMap : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_RepresentationMap();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap(const Handle_StepRepr_RepresentationMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap(const StepRepr_RepresentationMap *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationMap {
	StepRepr_RepresentationMap* GetObject() {
	return (StepRepr_RepresentationMap*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_MaterialDesignation;
class Handle_StepRepr_MaterialDesignation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_MaterialDesignation();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation(const Handle_StepRepr_MaterialDesignation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation(const StepRepr_MaterialDesignation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MaterialDesignation {
	StepRepr_MaterialDesignation* GetObject() {
	return (StepRepr_MaterialDesignation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ShapeAspectTransition;
class Handle_StepRepr_ShapeAspectTransition : public Handle_StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ShapeAspectTransition();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition(const Handle_StepRepr_ShapeAspectTransition &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition(const StepRepr_ShapeAspectTransition *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspectTransition {
	StepRepr_ShapeAspectTransition* GetObject() {
	return (StepRepr_ShapeAspectTransition*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_SpecifiedHigherUsageOccurrence;
class Handle_StepRepr_SpecifiedHigherUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_SpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence(const Handle_StepRepr_SpecifiedHigherUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence(const StepRepr_SpecifiedHigherUsageOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SpecifiedHigherUsageOccurrence {
	StepRepr_SpecifiedHigherUsageOccurrence* GetObject() {
	return (StepRepr_SpecifiedHigherUsageOccurrence*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ItemDefinedTransformation;
class Handle_StepRepr_ItemDefinedTransformation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ItemDefinedTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation(const Handle_StepRepr_ItemDefinedTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation(const StepRepr_ItemDefinedTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ItemDefinedTransformation {
	StepRepr_ItemDefinedTransformation* GetObject() {
	return (StepRepr_ItemDefinedTransformation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_NextAssemblyUsageOccurrence;
class Handle_StepRepr_NextAssemblyUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_NextAssemblyUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence(const Handle_StepRepr_NextAssemblyUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence(const StepRepr_NextAssemblyUsageOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_NextAssemblyUsageOccurrence {
	StepRepr_NextAssemblyUsageOccurrence* GetObject() {
	return (StepRepr_NextAssemblyUsageOccurrence*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_DataEnvironment;
class Handle_StepRepr_DataEnvironment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_DataEnvironment();
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment();
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment(const Handle_StepRepr_DataEnvironment &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment(const StepRepr_DataEnvironment *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DataEnvironment {
	StepRepr_DataEnvironment* GetObject() {
	return (StepRepr_DataEnvironment*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_DerivedShapeAspect;
class Handle_StepRepr_DerivedShapeAspect : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_DerivedShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect(const Handle_StepRepr_DerivedShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect(const StepRepr_DerivedShapeAspect *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DerivedShapeAspect {
	StepRepr_DerivedShapeAspect* GetObject() {
	return (StepRepr_DerivedShapeAspect*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_Extension;
class Handle_StepRepr_Extension : public Handle_StepRepr_DerivedShapeAspect {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_Extension();
		%feature("autodoc", "1");
		Handle_StepRepr_Extension();
		%feature("autodoc", "1");
		Handle_StepRepr_Extension(const Handle_StepRepr_Extension &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_Extension(const StepRepr_Extension *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_Extension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_Extension {
	StepRepr_Extension* GetObject() {
	return (StepRepr_Extension*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ReprItemAndLengthMeasureWithUnit;
class Handle_StepRepr_ReprItemAndLengthMeasureWithUnit : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(const StepRepr_ReprItemAndLengthMeasureWithUnit *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnit {
	StepRepr_ReprItemAndLengthMeasureWithUnit* GetObject() {
	return (StepRepr_ReprItemAndLengthMeasureWithUnit*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_PropertyDefinitionRepresentation;
class Handle_StepRepr_PropertyDefinitionRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_PropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation(const Handle_StepRepr_PropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation(const StepRepr_PropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PropertyDefinitionRepresentation {
	StepRepr_PropertyDefinitionRepresentation* GetObject() {
	return (StepRepr_PropertyDefinitionRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_MaterialPropertyRepresentation;
class Handle_StepRepr_MaterialPropertyRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_MaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation(const StepRepr_MaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MaterialPropertyRepresentation {
	StepRepr_MaterialPropertyRepresentation* GetObject() {
	return (StepRepr_MaterialPropertyRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ProductDefinitionShape;
class Handle_StepRepr_ProductDefinitionShape : public Handle_StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ProductDefinitionShape();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape(const Handle_StepRepr_ProductDefinitionShape &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape(const StepRepr_ProductDefinitionShape *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ProductDefinitionShape {
	StepRepr_ProductDefinitionShape* GetObject() {
	return (StepRepr_ProductDefinitionShape*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_HArray1OfRepresentationItem;
class Handle_StepRepr_HArray1OfRepresentationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_HArray1OfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem(const Handle_StepRepr_HArray1OfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem(const StepRepr_HArray1OfRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HArray1OfRepresentationItem {
	StepRepr_HArray1OfRepresentationItem* GetObject() {
	return (StepRepr_HArray1OfRepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation;
class Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(const StepRepr_StructuralResponsePropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	StepRepr_StructuralResponsePropertyDefinitionRepresentation* GetObject() {
	return (StepRepr_StructuralResponsePropertyDefinitionRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_DescriptiveRepresentationItem;
class Handle_StepRepr_DescriptiveRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_DescriptiveRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem(const Handle_StepRepr_DescriptiveRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem(const StepRepr_DescriptiveRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DescriptiveRepresentationItem {
	StepRepr_DescriptiveRepresentationItem* GetObject() {
	return (StepRepr_DescriptiveRepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem;
class Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem(const Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem(const StepRepr_SequenceNodeOfSequenceOfRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	StepRepr_SequenceNodeOfSequenceOfRepresentationItem* GetObject() {
	return (StepRepr_SequenceNodeOfSequenceOfRepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_StructuralResponseProperty;
class Handle_StepRepr_StructuralResponseProperty : public Handle_StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_StructuralResponseProperty();
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty();
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty(const Handle_StepRepr_StructuralResponseProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty(const StepRepr_StructuralResponseProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_StructuralResponseProperty {
	StepRepr_StructuralResponseProperty* GetObject() {
	return (StepRepr_StructuralResponseProperty*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_GlobalUnitAssignedContext;
class Handle_StepRepr_GlobalUnitAssignedContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_GlobalUnitAssignedContext();
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext();
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext(const Handle_StepRepr_GlobalUnitAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext(const StepRepr_GlobalUnitAssignedContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_GlobalUnitAssignedContext {
	StepRepr_GlobalUnitAssignedContext* GetObject() {
	return (StepRepr_GlobalUnitAssignedContext*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ValueRange;
class Handle_StepRepr_ValueRange : public Handle_StepRepr_CompoundRepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ValueRange();
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange();
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange(const Handle_StepRepr_ValueRange &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange(const StepRepr_ValueRange *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ValueRange {
	StepRepr_ValueRange* GetObject() {
	return (StepRepr_ValueRange*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ShapeAspectDerivingRelationship;
class Handle_StepRepr_ShapeAspectDerivingRelationship : public Handle_StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship(const Handle_StepRepr_ShapeAspectDerivingRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship(const StepRepr_ShapeAspectDerivingRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspectDerivingRelationship {
	StepRepr_ShapeAspectDerivingRelationship* GetObject() {
	return (StepRepr_ShapeAspectDerivingRelationship*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_DefinitionalRepresentation;
class Handle_StepRepr_DefinitionalRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_DefinitionalRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation(const Handle_StepRepr_DefinitionalRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation(const StepRepr_DefinitionalRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DefinitionalRepresentation {
	StepRepr_DefinitionalRepresentation* GetObject() {
	return (StepRepr_DefinitionalRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation;
class Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation(const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation(const StepRepr_HArray1OfPropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation {
	StepRepr_HArray1OfPropertyDefinitionRepresentation* GetObject() {
	return (StepRepr_HArray1OfPropertyDefinitionRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ConfigurationItem;
class Handle_StepRepr_ConfigurationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ConfigurationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem(const Handle_StepRepr_ConfigurationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem(const StepRepr_ConfigurationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ConfigurationItem {
	StepRepr_ConfigurationItem* GetObject() {
	return (StepRepr_ConfigurationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ExternallyDefinedRepresentation;
class Handle_StepRepr_ExternallyDefinedRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ExternallyDefinedRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation(const Handle_StepRepr_ExternallyDefinedRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation(const StepRepr_ExternallyDefinedRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ExternallyDefinedRepresentation {
	StepRepr_ExternallyDefinedRepresentation* GetObject() {
	return (StepRepr_ExternallyDefinedRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ConfigurationEffectivity;
class Handle_StepRepr_ConfigurationEffectivity : public Handle_StepBasic_ProductDefinitionEffectivity {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ConfigurationEffectivity();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity(const Handle_StepRepr_ConfigurationEffectivity &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity(const StepRepr_ConfigurationEffectivity *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ConfigurationEffectivity {
	StepRepr_ConfigurationEffectivity* GetObject() {
	return (StepRepr_ConfigurationEffectivity*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_MeasureRepresentationItem;
class Handle_StepRepr_MeasureRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_MeasureRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem(const Handle_StepRepr_MeasureRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem(const StepRepr_MeasureRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MeasureRepresentationItem {
	StepRepr_MeasureRepresentationItem* GetObject() {
	return (StepRepr_MeasureRepresentationItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ConfigurationDesign;
class Handle_StepRepr_ConfigurationDesign : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ConfigurationDesign();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign(const Handle_StepRepr_ConfigurationDesign &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign(const StepRepr_ConfigurationDesign *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ConfigurationDesign {
	StepRepr_ConfigurationDesign* GetObject() {
	return (StepRepr_ConfigurationDesign*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_PromissoryUsageOccurrence;
class Handle_StepRepr_PromissoryUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_PromissoryUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence(const Handle_StepRepr_PromissoryUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence(const StepRepr_PromissoryUsageOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PromissoryUsageOccurrence {
	StepRepr_PromissoryUsageOccurrence* GetObject() {
	return (StepRepr_PromissoryUsageOccurrence*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_SuppliedPartRelationship;
class Handle_StepRepr_SuppliedPartRelationship : public Handle_StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_SuppliedPartRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship(const Handle_StepRepr_SuppliedPartRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship(const StepRepr_SuppliedPartRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SuppliedPartRelationship {
	StepRepr_SuppliedPartRelationship* GetObject() {
	return (StepRepr_SuppliedPartRelationship*)$self->Access();
	}
};

%nodefaultctor Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation;
class Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation : public Handle_StepRepr_RepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		~Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(const StepRepr_ShapeRepresentationRelationshipWithTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation {
	StepRepr_ShapeRepresentationRelationshipWithTransformation* GetObject() {
	return (StepRepr_ShapeRepresentationRelationshipWithTransformation*)$self->Access();
	}
};

%nodefaultctor StepRepr_Array1OfPropertyDefinitionRepresentation;
class StepRepr_Array1OfPropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_Array1OfPropertyDefinitionRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_Array1OfPropertyDefinitionRepresentation(const Handle_StepRepr_PropertyDefinitionRepresentation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_PropertyDefinitionRepresentation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepRepr_Array1OfPropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepRepr_Array1OfPropertyDefinitionRepresentation & Assign(const StepRepr_Array1OfPropertyDefinitionRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_PropertyDefinitionRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_PropertyDefinitionRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_PropertyDefinitionRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & operator()(const Standard_Integer Index);

};

%nodefaultctor StepRepr_CharacterizedDefinition;
class StepRepr_CharacterizedDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_CharacterizedDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_CharacterizedObject CharacterizedObject() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;
		%feature("autodoc", "1");
		Handle_StepBasic_DocumentFile DocumentFile() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_CharacterizedDefinition();

};

%nodefaultctor StepRepr_ShapeAspectRelationship;
class StepRepr_ShapeAspectRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspectRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_ShapeAspect &aRelatingShapeAspect, const Handle_StepRepr_ShapeAspect &aRelatedShapeAspect);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect RelatingShapeAspect() const;
		%feature("autodoc", "1");
		void SetRelatingShapeAspect(const Handle_StepRepr_ShapeAspect &RelatingShapeAspect);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect RelatedShapeAspect() const;
		%feature("autodoc", "1");
		void SetRelatedShapeAspect(const Handle_StepRepr_ShapeAspect &RelatedShapeAspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeAspectRelationship();

};
%extend StepRepr_ShapeAspectRelationship {
	Handle_StepRepr_ShapeAspectRelationship GetHandle() {
	return *(Handle_StepRepr_ShapeAspectRelationship*) &$self;
	}
};

%nodefaultctor StepRepr_ShapeAspectTransition;
class StepRepr_ShapeAspectTransition : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspectTransition();
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeAspectTransition();

};
%extend StepRepr_ShapeAspectTransition {
	Handle_StepRepr_ShapeAspectTransition GetHandle() {
	return *(Handle_StepRepr_ShapeAspectTransition*) &$self;
	}
};

%nodefaultctor StepRepr_ConfigurationDesign;
class StepRepr_ConfigurationDesign : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationDesign();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ConfigurationItem &aConfiguration, const StepRepr_ConfigurationDesignItem &aDesign);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem Configuration() const;
		%feature("autodoc", "1");
		void SetConfiguration(const Handle_StepRepr_ConfigurationItem &Configuration);
		%feature("autodoc", "1");
		StepRepr_ConfigurationDesignItem Design() const;
		%feature("autodoc", "1");
		void SetDesign(const StepRepr_ConfigurationDesignItem &Design);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ConfigurationDesign();

};
%extend StepRepr_ConfigurationDesign {
	Handle_StepRepr_ConfigurationDesign GetHandle() {
	return *(Handle_StepRepr_ConfigurationDesign*) &$self;
	}
};

%nodefaultctor StepRepr_RepresentationRelationship;
class StepRepr_RepresentationRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationRelationship();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_Representation &aRep1, const Handle_StepRepr_Representation &aRep2);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetRep1(const Handle_StepRepr_Representation &aRep1);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Rep1() const;
		%feature("autodoc", "1");
		void SetRep2(const Handle_StepRepr_Representation &aRep2);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Rep2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_RepresentationRelationship();

};
%extend StepRepr_RepresentationRelationship {
	Handle_StepRepr_RepresentationRelationship GetHandle() {
	return *(Handle_StepRepr_RepresentationRelationship*) &$self;
	}
};

%nodefaultctor StepRepr_ShapeRepresentationRelationship;
class StepRepr_ShapeRepresentationRelationship : public StepRepr_RepresentationRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeRepresentationRelationship();
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeRepresentationRelationship();

};
%extend StepRepr_ShapeRepresentationRelationship {
	Handle_StepRepr_ShapeRepresentationRelationship GetHandle() {
	return *(Handle_StepRepr_ShapeRepresentationRelationship*) &$self;
	}
};

%nodefaultctor StepRepr_RepresentationRelationshipWithTransformation;
class StepRepr_RepresentationRelationshipWithTransformation : public StepRepr_ShapeRepresentationRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_Representation &aRep1, const Handle_StepRepr_Representation &aRep2, const StepRepr_Transformation &aTransf);
		%feature("autodoc", "1");
		StepRepr_Transformation TransformationOperator() const;
		%feature("autodoc", "1");
		void SetTransformationOperator(const StepRepr_Transformation &aTrans);
		%feature("autodoc", "1");
		virtual		~StepRepr_RepresentationRelationshipWithTransformation();

};
%extend StepRepr_RepresentationRelationshipWithTransformation {
	Handle_StepRepr_RepresentationRelationshipWithTransformation GetHandle() {
	return *(Handle_StepRepr_RepresentationRelationshipWithTransformation*) &$self;
	}
};

%nodefaultctor StepRepr_HSequenceOfRepresentationItem;
class StepRepr_HSequenceOfRepresentationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepRepr_SequenceOfRepresentationItem & Sequence() const;
		%feature("autodoc", "1");
		StepRepr_SequenceOfRepresentationItem & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_HSequenceOfRepresentationItem();

};
%extend StepRepr_HSequenceOfRepresentationItem {
	Handle_StepRepr_HSequenceOfRepresentationItem GetHandle() {
	return *(Handle_StepRepr_HSequenceOfRepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_Representation;
class StepRepr_Representation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_Representation();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepRepr_HArray1OfRepresentationItem &aItems, const Handle_StepRepr_RepresentationContext &aContextOfItems);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepRepr_HArray1OfRepresentationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem Items() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		void SetContextOfItems(const Handle_StepRepr_RepresentationContext &aContextOfItems);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext ContextOfItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_Representation();

};
%extend StepRepr_Representation {
	Handle_StepRepr_Representation GetHandle() {
	return *(Handle_StepRepr_Representation*) &$self;
	}
};

%nodefaultctor StepRepr_PropertyDefinitionRelationship;
class StepRepr_PropertyDefinitionRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_PropertyDefinitionRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_PropertyDefinition &aRelatingPropertyDefinition, const Handle_StepRepr_PropertyDefinition &aRelatedPropertyDefinition);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition RelatingPropertyDefinition() const;
		%feature("autodoc", "1");
		void SetRelatingPropertyDefinition(const Handle_StepRepr_PropertyDefinition &RelatingPropertyDefinition);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition RelatedPropertyDefinition() const;
		%feature("autodoc", "1");
		void SetRelatedPropertyDefinition(const Handle_StepRepr_PropertyDefinition &RelatedPropertyDefinition);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_PropertyDefinitionRelationship();

};
%extend StepRepr_PropertyDefinitionRelationship {
	Handle_StepRepr_PropertyDefinitionRelationship GetHandle() {
	return *(Handle_StepRepr_PropertyDefinitionRelationship*) &$self;
	}
};

%nodefaultctor StepRepr_HArray1OfMaterialPropertyRepresentation;
class StepRepr_HArray1OfMaterialPropertyRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HArray1OfMaterialPropertyRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_HArray1OfMaterialPropertyRepresentation(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepRepr_MaterialPropertyRepresentation &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_MaterialPropertyRepresentation &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepRepr_Array1OfMaterialPropertyRepresentation & Array1() const;
		%feature("autodoc", "1");
		StepRepr_Array1OfMaterialPropertyRepresentation & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_HArray1OfMaterialPropertyRepresentation();

};
%extend StepRepr_HArray1OfMaterialPropertyRepresentation {
	Handle_StepRepr_HArray1OfMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_HArray1OfMaterialPropertyRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_ProductConcept;
class StepRepr_ProductConcept : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ProductConcept();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aId, const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepBasic_ProductConceptContext &aMarketContext);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Id() const;
		%feature("autodoc", "1");
		void SetId(const Handle_TCollection_HAsciiString &Id);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductConceptContext MarketContext() const;
		%feature("autodoc", "1");
		void SetMarketContext(const Handle_StepBasic_ProductConceptContext &MarketContext);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ProductConcept();

};
%extend StepRepr_ProductConcept {
	Handle_StepRepr_ProductConcept GetHandle() {
	return *(Handle_StepRepr_ProductConcept*) &$self;
	}
};

%nodefaultctor StepRepr_RepresentedDefinition;
class StepRepr_RepresentedDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentedDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_GeneralProperty GeneralProperty() const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition PropertyDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship PropertyDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_RepresentedDefinition();

};

%nodefaultctor StepRepr_SuppliedPartRelationship;
class StepRepr_SuppliedPartRelationship : public StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_SuppliedPartRelationship();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_SuppliedPartRelationship();

};
%extend StepRepr_SuppliedPartRelationship {
	Handle_StepRepr_SuppliedPartRelationship GetHandle() {
	return *(Handle_StepRepr_SuppliedPartRelationship*) &$self;
	}
};

%nodefaultctor StepRepr_ShapeAspect;
class StepRepr_ShapeAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspect();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_ProductDefinitionShape &aOfShape, const StepData_Logical aProductDefinitional);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetOfShape(const Handle_StepRepr_ProductDefinitionShape &aOfShape);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape OfShape() const;
		%feature("autodoc", "1");
		void SetProductDefinitional(const StepData_Logical aProductDefinitional);
		%feature("autodoc", "1");
		StepData_Logical ProductDefinitional() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeAspect();

};
%extend StepRepr_ShapeAspect {
	Handle_StepRepr_ShapeAspect GetHandle() {
	return *(Handle_StepRepr_ShapeAspect*) &$self;
	}
};

%nodefaultctor StepRepr_DerivedShapeAspect;
class StepRepr_DerivedShapeAspect : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepRepr_DerivedShapeAspect();
		%feature("autodoc", "1");
		virtual		~StepRepr_DerivedShapeAspect();

};
%extend StepRepr_DerivedShapeAspect {
	Handle_StepRepr_DerivedShapeAspect GetHandle() {
	return *(Handle_StepRepr_DerivedShapeAspect*) &$self;
	}
};

%nodefaultctor StepRepr_Extension;
class StepRepr_Extension : public StepRepr_DerivedShapeAspect {
	public:
		%feature("autodoc", "1");
		StepRepr_Extension();
		%feature("autodoc", "1");
		virtual		~StepRepr_Extension();

};
%extend StepRepr_Extension {
	Handle_StepRepr_Extension GetHandle() {
	return *(Handle_StepRepr_Extension*) &$self;
	}
};

%nodefaultctor StepRepr_SequenceNodeOfSequenceOfRepresentationItem;
class StepRepr_SequenceNodeOfSequenceOfRepresentationItem : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceNodeOfSequenceOfRepresentationItem(const Handle_StepRepr_RepresentationItem &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_SequenceNodeOfSequenceOfRepresentationItem();

};
%extend StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem GetHandle() {
	return *(Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_ProductDefinitionUsage;
class StepRepr_ProductDefinitionUsage : public StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ProductDefinitionUsage();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ProductDefinitionUsage();

};
%extend StepRepr_ProductDefinitionUsage {
	Handle_StepRepr_ProductDefinitionUsage GetHandle() {
	return *(Handle_StepRepr_ProductDefinitionUsage*) &$self;
	}
};

%nodefaultctor StepRepr_RepresentationContext;
class StepRepr_RepresentationContext : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		void SetContextIdentifier(const Handle_TCollection_HAsciiString &aContextIdentifier);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ContextIdentifier() const;
		%feature("autodoc", "1");
		void SetContextType(const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ContextType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_RepresentationContext();

};
%extend StepRepr_RepresentationContext {
	Handle_StepRepr_RepresentationContext GetHandle() {
	return *(Handle_StepRepr_RepresentationContext*) &$self;
	}
};

%nodefaultctor StepRepr_ParametricRepresentationContext;
class StepRepr_ParametricRepresentationContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepRepr_ParametricRepresentationContext();
		%feature("autodoc", "1");
		virtual		~StepRepr_ParametricRepresentationContext();

};
%extend StepRepr_ParametricRepresentationContext {
	Handle_StepRepr_ParametricRepresentationContext GetHandle() {
	return *(Handle_StepRepr_ParametricRepresentationContext*) &$self;
	}
};

%nodefaultctor StepRepr_ShapeRepresentationRelationshipWithTransformation;
class StepRepr_ShapeRepresentationRelationshipWithTransformation : public StepRepr_RepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeRepresentationRelationshipWithTransformation();

};
%extend StepRepr_ShapeRepresentationRelationshipWithTransformation {
	Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation GetHandle() {
	return *(Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation*) &$self;
	}
};

%nodefaultctor StepRepr_HArray1OfRepresentationItem;
class StepRepr_HArray1OfRepresentationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HArray1OfRepresentationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_HArray1OfRepresentationItem(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepRepr_RepresentationItem &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_RepresentationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepRepr_Array1OfRepresentationItem & Array1() const;
		%feature("autodoc", "1");
		StepRepr_Array1OfRepresentationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_HArray1OfRepresentationItem();

};
%extend StepRepr_HArray1OfRepresentationItem {
	Handle_StepRepr_HArray1OfRepresentationItem GetHandle() {
	return *(Handle_StepRepr_HArray1OfRepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_MaterialDesignation;
class StepRepr_MaterialDesignation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_MaterialDesignation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const StepRepr_CharacterizedDefinition &aOfDefinition);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetOfDefinition(const StepRepr_CharacterizedDefinition &aOfDefinition);
		%feature("autodoc", "1");
		StepRepr_CharacterizedDefinition OfDefinition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_MaterialDesignation();

};
%extend StepRepr_MaterialDesignation {
	Handle_StepRepr_MaterialDesignation GetHandle() {
	return *(Handle_StepRepr_MaterialDesignation*) &$self;
	}
};

%nodefaultctor StepRepr_FunctionallyDefinedTransformation;
class StepRepr_FunctionallyDefinedTransformation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_FunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_FunctionallyDefinedTransformation();

};
%extend StepRepr_FunctionallyDefinedTransformation {
	Handle_StepRepr_FunctionallyDefinedTransformation GetHandle() {
	return *(Handle_StepRepr_FunctionallyDefinedTransformation*) &$self;
	}
};

%nodefaultctor StepRepr_CompositeShapeAspect;
class StepRepr_CompositeShapeAspect : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepRepr_CompositeShapeAspect();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_CompositeShapeAspect();

};
%extend StepRepr_CompositeShapeAspect {
	Handle_StepRepr_CompositeShapeAspect GetHandle() {
	return *(Handle_StepRepr_CompositeShapeAspect*) &$self;
	}
};

%nodefaultctor StepRepr_AssemblyComponentUsage;
class StepRepr_AssemblyComponentUsage : public StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_AssemblyComponentUsage();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Boolean hasReferenceDesignator, const Handle_TCollection_HAsciiString &aReferenceDesignator);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceDesignator() const;
		%feature("autodoc", "1");
		void SetReferenceDesignator(const Handle_TCollection_HAsciiString &ReferenceDesignator);
		%feature("autodoc", "1");
		Standard_Boolean HasReferenceDesignator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_AssemblyComponentUsage();

};
%extend StepRepr_AssemblyComponentUsage {
	Handle_StepRepr_AssemblyComponentUsage GetHandle() {
	return *(Handle_StepRepr_AssemblyComponentUsage*) &$self;
	}
};

%nodefaultctor StepRepr_HArray1OfPropertyDefinitionRepresentation;
class StepRepr_HArray1OfPropertyDefinitionRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HArray1OfPropertyDefinitionRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_HArray1OfPropertyDefinitionRepresentation(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepRepr_PropertyDefinitionRepresentation &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_PropertyDefinitionRepresentation &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_PropertyDefinitionRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_PropertyDefinitionRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepRepr_Array1OfPropertyDefinitionRepresentation & Array1() const;
		%feature("autodoc", "1");
		StepRepr_Array1OfPropertyDefinitionRepresentation & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_HArray1OfPropertyDefinitionRepresentation();

};
%extend StepRepr_HArray1OfPropertyDefinitionRepresentation {
	Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation GetHandle() {
	return *(Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_ConfigurationEffectivity;
class StepRepr_ConfigurationEffectivity : public StepBasic_ProductDefinitionEffectivity {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationEffectivity();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aEffectivity_Id, const Handle_StepBasic_ProductDefinitionRelationship &aProductDefinitionEffectivity_Usage, const Handle_StepRepr_ConfigurationDesign &aConfiguration);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign Configuration() const;
		%feature("autodoc", "1");
		void SetConfiguration(const Handle_StepRepr_ConfigurationDesign &Configuration);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ConfigurationEffectivity();

};
%extend StepRepr_ConfigurationEffectivity {
	Handle_StepRepr_ConfigurationEffectivity GetHandle() {
	return *(Handle_StepRepr_ConfigurationEffectivity*) &$self;
	}
};

%nodefaultctor StepRepr_GlobalUncertaintyAssignedContext;
class StepRepr_GlobalUncertaintyAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepRepr_GlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &aUncertainty);
		%feature("autodoc", "1");
		void SetUncertainty(const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &aUncertainty);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit Uncertainty() const;
		%feature("autodoc", "1");
		Handle_StepBasic_UncertaintyMeasureWithUnit UncertaintyValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUncertainty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_GlobalUncertaintyAssignedContext();

};
%extend StepRepr_GlobalUncertaintyAssignedContext {
	Handle_StepRepr_GlobalUncertaintyAssignedContext GetHandle() {
	return *(Handle_StepRepr_GlobalUncertaintyAssignedContext*) &$self;
	}
};

%nodefaultctor StepRepr_PropertyDefinitionRepresentation;
class StepRepr_PropertyDefinitionRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_PropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		void Init(const StepRepr_RepresentedDefinition &aDefinition, const Handle_StepRepr_Representation &aUsedRepresentation);
		%feature("autodoc", "1");
		StepRepr_RepresentedDefinition Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const StepRepr_RepresentedDefinition &Definition);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation UsedRepresentation() const;
		%feature("autodoc", "1");
		void SetUsedRepresentation(const Handle_StepRepr_Representation &UsedRepresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_PropertyDefinitionRepresentation();

};
%extend StepRepr_PropertyDefinitionRepresentation {
	Handle_StepRepr_PropertyDefinitionRepresentation GetHandle() {
	return *(Handle_StepRepr_PropertyDefinitionRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_MaterialPropertyRepresentation;
class StepRepr_MaterialPropertyRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_MaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void Init(const StepRepr_RepresentedDefinition &aPropertyDefinitionRepresentation_Definition, const Handle_StepRepr_Representation &aPropertyDefinitionRepresentation_UsedRepresentation, const Handle_StepRepr_DataEnvironment &aDependentEnvironment);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment DependentEnvironment() const;
		%feature("autodoc", "1");
		void SetDependentEnvironment(const Handle_StepRepr_DataEnvironment &DependentEnvironment);
		%feature("autodoc", "1");
		virtual		~StepRepr_MaterialPropertyRepresentation();

};
%extend StepRepr_MaterialPropertyRepresentation {
	Handle_StepRepr_MaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_MaterialPropertyRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_SpecifiedHigherUsageOccurrence;
class StepRepr_SpecifiedHigherUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_SpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator, const Handle_TCollection_HAsciiString &aAssemblyComponentUsage_ReferenceDesignator, const Handle_StepRepr_AssemblyComponentUsage &aUpperUsage, const Handle_StepRepr_NextAssemblyUsageOccurrence &aNextUsage);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage UpperUsage() const;
		%feature("autodoc", "1");
		void SetUpperUsage(const Handle_StepRepr_AssemblyComponentUsage &UpperUsage);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence NextUsage() const;
		%feature("autodoc", "1");
		void SetNextUsage(const Handle_StepRepr_NextAssemblyUsageOccurrence &NextUsage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_SpecifiedHigherUsageOccurrence();

};
%extend StepRepr_SpecifiedHigherUsageOccurrence {
	Handle_StepRepr_SpecifiedHigherUsageOccurrence GetHandle() {
	return *(Handle_StepRepr_SpecifiedHigherUsageOccurrence*) &$self;
	}
};

%nodefaultctor StepRepr_RepresentationItem;
class StepRepr_RepresentationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_RepresentationItem();

};
%extend StepRepr_RepresentationItem {
	Handle_StepRepr_RepresentationItem GetHandle() {
	return *(Handle_StepRepr_RepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_MappedItem;
class StepRepr_MappedItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_MappedItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepRepr_RepresentationMap &aMappingSource, const Handle_StepRepr_RepresentationItem &aMappingTarget);
		%feature("autodoc", "1");
		void SetMappingSource(const Handle_StepRepr_RepresentationMap &aMappingSource);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap MappingSource() const;
		%feature("autodoc", "1");
		void SetMappingTarget(const Handle_StepRepr_RepresentationItem &aMappingTarget);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem MappingTarget() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_MappedItem();

};
%extend StepRepr_MappedItem {
	Handle_StepRepr_MappedItem GetHandle() {
	return *(Handle_StepRepr_MappedItem*) &$self;
	}
};

%nodefaultctor StepRepr_StructuralResponsePropertyDefinitionRepresentation;
class StepRepr_StructuralResponsePropertyDefinitionRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_StructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_StructuralResponsePropertyDefinitionRepresentation();

};
%extend StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation GetHandle() {
	return *(Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_ReprItemAndLengthMeasureWithUnit;
class StepRepr_ReprItemAndLengthMeasureWithUnit : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_ReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_MeasureWithUnit &aMWU, const Handle_StepRepr_RepresentationItem &aRI);
		%feature("autodoc", "1");
		void SetLengthMeasureWithUnit(const Handle_StepBasic_LengthMeasureWithUnit &aLMWU);
		%feature("autodoc", "1");
		Handle_StepBasic_LengthMeasureWithUnit GetLengthMeasureWithUnit() const;
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem GetMeasureRepresentationItem() const;
		%feature("autodoc", "1");
		void SetMeasureWithUnit(const Handle_StepBasic_MeasureWithUnit &aMWU);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit GetMeasureWithUnit() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem GetRepresentationItem() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ReprItemAndLengthMeasureWithUnit();

};
%extend StepRepr_ReprItemAndLengthMeasureWithUnit {
	Handle_StepRepr_ReprItemAndLengthMeasureWithUnit GetHandle() {
	return *(Handle_StepRepr_ReprItemAndLengthMeasureWithUnit*) &$self;
	}
};

%nodefaultctor StepRepr_SequenceOfMaterialPropertyRepresentation;
class StepRepr_SequenceOfMaterialPropertyRepresentation : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~StepRepr_SequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		const StepRepr_SequenceOfMaterialPropertyRepresentation & Assign(const StepRepr_SequenceOfMaterialPropertyRepresentation &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_MaterialPropertyRepresentation &T);
		%feature("autodoc", "1");
		void Append(StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_MaterialPropertyRepresentation &T);
		%feature("autodoc", "1");
		void Prepend(StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & First() const;
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &I);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor StepRepr_ShapeAspectDerivingRelationship;
class StepRepr_ShapeAspectDerivingRelationship : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeAspectDerivingRelationship();

};
%extend StepRepr_ShapeAspectDerivingRelationship {
	Handle_StepRepr_ShapeAspectDerivingRelationship GetHandle() {
	return *(Handle_StepRepr_ShapeAspectDerivingRelationship*) &$self;
	}
};

%nodefaultctor StepRepr_Transformation;
class StepRepr_Transformation : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_Transformation();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation ItemDefinedTransformation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation FunctionallyDefinedTransformation() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_Transformation();

};

%nodefaultctor StepRepr_RepresentationMap;
class StepRepr_RepresentationMap : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationMap();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepRepr_RepresentationItem &aMappingOrigin, const Handle_StepRepr_Representation &aMappedRepresentation);
		%feature("autodoc", "1");
		void SetMappingOrigin(const Handle_StepRepr_RepresentationItem &aMappingOrigin);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem MappingOrigin() const;
		%feature("autodoc", "1");
		void SetMappedRepresentation(const Handle_StepRepr_Representation &aMappedRepresentation);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation MappedRepresentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_RepresentationMap();

};
%extend StepRepr_RepresentationMap {
	Handle_StepRepr_RepresentationMap GetHandle() {
	return *(Handle_StepRepr_RepresentationMap*) &$self;
	}
};

%nodefaultctor StepRepr_Array1OfMaterialPropertyRepresentation;
class StepRepr_Array1OfMaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_Array1OfMaterialPropertyRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_Array1OfMaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_MaterialPropertyRepresentation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepRepr_Array1OfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepRepr_Array1OfMaterialPropertyRepresentation & Assign(const StepRepr_Array1OfMaterialPropertyRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index);

};

%nodefaultctor StepRepr_PropertyDefinition;
class StepRepr_PropertyDefinition : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_PropertyDefinition();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const StepRepr_CharacterizedDefinition &aDefinition);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		StepRepr_CharacterizedDefinition Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const StepRepr_CharacterizedDefinition &Definition);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_PropertyDefinition();

};
%extend StepRepr_PropertyDefinition {
	Handle_StepRepr_PropertyDefinition GetHandle() {
	return *(Handle_StepRepr_PropertyDefinition*) &$self;
	}
};

%nodefaultctor StepRepr_ProductDefinitionShape;
class StepRepr_ProductDefinitionShape : public StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		StepRepr_ProductDefinitionShape();
		%feature("autodoc", "1");
		virtual		~StepRepr_ProductDefinitionShape();

};
%extend StepRepr_ProductDefinitionShape {
	Handle_StepRepr_ProductDefinitionShape GetHandle() {
	return *(Handle_StepRepr_ProductDefinitionShape*) &$self;
	}
};

%nodefaultctor StepRepr_CompoundRepresentationItem;
class StepRepr_CompoundRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_CompoundRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepRepr_HArray1OfRepresentationItem &item_element);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem ItemElement() const;
		%feature("autodoc", "1");
		Standard_Integer NbItemElement() const;
		%feature("autodoc", "1");
		void SetItemElement(const Handle_StepRepr_HArray1OfRepresentationItem &item_element);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem ItemElementValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetItemElementValue(const Standard_Integer num, const Handle_StepRepr_RepresentationItem &anelement);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_CompoundRepresentationItem();

};
%extend StepRepr_CompoundRepresentationItem {
	Handle_StepRepr_CompoundRepresentationItem GetHandle() {
	return *(Handle_StepRepr_CompoundRepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_NextAssemblyUsageOccurrence;
class StepRepr_NextAssemblyUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_NextAssemblyUsageOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_NextAssemblyUsageOccurrence();

};
%extend StepRepr_NextAssemblyUsageOccurrence {
	Handle_StepRepr_NextAssemblyUsageOccurrence GetHandle() {
	return *(Handle_StepRepr_NextAssemblyUsageOccurrence*) &$self;
	}
};

%nodefaultctor StepRepr_GlobalUnitAssignedContext;
class StepRepr_GlobalUnitAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepRepr_GlobalUnitAssignedContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		void SetUnits(const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfNamedUnit Units() const;
		%feature("autodoc", "1");
		Handle_StepBasic_NamedUnit UnitsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUnits() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_GlobalUnitAssignedContext();

};
%extend StepRepr_GlobalUnitAssignedContext {
	Handle_StepRepr_GlobalUnitAssignedContext GetHandle() {
	return *(Handle_StepRepr_GlobalUnitAssignedContext*) &$self;
	}
};

%nodefaultctor StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation;
class StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation();

};
%extend StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_ValueRange;
class StepRepr_ValueRange : public StepRepr_CompoundRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_ValueRange();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ValueRange();

};
%extend StepRepr_ValueRange {
	Handle_StepRepr_ValueRange GetHandle() {
	return *(Handle_StepRepr_ValueRange*) &$self;
	}
};

%nodefaultctor StepRepr_SequenceOfRepresentationItem;
class StepRepr_SequenceOfRepresentationItem : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceOfRepresentationItem();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~StepRepr_SequenceOfRepresentationItem();
		%feature("autodoc", "1");
		const StepRepr_SequenceOfRepresentationItem & Assign(const StepRepr_SequenceOfRepresentationItem &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_RepresentationItem &T);
		%feature("autodoc", "1");
		void Append(StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_RepresentationItem &T);
		%feature("autodoc", "1");
		void Prepend(StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & First() const;
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &I);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor StepRepr_ExternallyDefinedRepresentation;
class StepRepr_ExternallyDefinedRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepRepr_ExternallyDefinedRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ExternallyDefinedRepresentation();

};
%extend StepRepr_ExternallyDefinedRepresentation {
	Handle_StepRepr_ExternallyDefinedRepresentation GetHandle() {
	return *(Handle_StepRepr_ExternallyDefinedRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_DefinitionalRepresentation;
class StepRepr_DefinitionalRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepRepr_DefinitionalRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_DefinitionalRepresentation();

};
%extend StepRepr_DefinitionalRepresentation {
	Handle_StepRepr_DefinitionalRepresentation GetHandle() {
	return *(Handle_StepRepr_DefinitionalRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_AssemblyComponentUsageSubstitute;
class StepRepr_AssemblyComponentUsageSubstitute : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_AssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDef, const Handle_StepRepr_AssemblyComponentUsage &aBase, const Handle_StepRepr_AssemblyComponentUsage &aSubs);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const Handle_TCollection_HAsciiString &aDef);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage Base() const;
		%feature("autodoc", "1");
		void SetBase(const Handle_StepRepr_AssemblyComponentUsage &aBase);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage Substitute() const;
		%feature("autodoc", "1");
		void SetSubstitute(const Handle_StepRepr_AssemblyComponentUsage &aSubstitute);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_AssemblyComponentUsageSubstitute();

};
%extend StepRepr_AssemblyComponentUsageSubstitute {
	Handle_StepRepr_AssemblyComponentUsageSubstitute GetHandle() {
	return *(Handle_StepRepr_AssemblyComponentUsageSubstitute*) &$self;
	}
};

%nodefaultctor StepRepr_QuantifiedAssemblyComponentUsage;
class StepRepr_QuantifiedAssemblyComponentUsage : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_QuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator, const Handle_TCollection_HAsciiString &aAssemblyComponentUsage_ReferenceDesignator, const Handle_StepBasic_MeasureWithUnit &aQuantity);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Quantity() const;
		%feature("autodoc", "1");
		void SetQuantity(const Handle_StepBasic_MeasureWithUnit &Quantity);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_QuantifiedAssemblyComponentUsage();

};
%extend StepRepr_QuantifiedAssemblyComponentUsage {
	Handle_StepRepr_QuantifiedAssemblyComponentUsage GetHandle() {
	return *(Handle_StepRepr_QuantifiedAssemblyComponentUsage*) &$self;
	}
};

%nodefaultctor StepRepr_ShapeDefinition;
class StepRepr_ShapeDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ShapeDefinition();

};

%nodefaultctor StepRepr_DescriptiveRepresentationItem;
class StepRepr_DescriptiveRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_DescriptiveRepresentationItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_DescriptiveRepresentationItem();

};
%extend StepRepr_DescriptiveRepresentationItem {
	Handle_StepRepr_DescriptiveRepresentationItem GetHandle() {
	return *(Handle_StepRepr_DescriptiveRepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_HSequenceOfMaterialPropertyRepresentation;
class StepRepr_HSequenceOfMaterialPropertyRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepRepr_SequenceOfMaterialPropertyRepresentation & Sequence() const;
		%feature("autodoc", "1");
		StepRepr_SequenceOfMaterialPropertyRepresentation & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_HSequenceOfMaterialPropertyRepresentation();

};
%extend StepRepr_HSequenceOfMaterialPropertyRepresentation {
	Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation*) &$self;
	}
};

%nodefaultctor StepRepr_DataEnvironment;
class StepRepr_DataEnvironment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_DataEnvironment();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &aElements);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation Elements() const;
		%feature("autodoc", "1");
		void SetElements(const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &Elements);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_DataEnvironment();

};
%extend StepRepr_DataEnvironment {
	Handle_StepRepr_DataEnvironment GetHandle() {
	return *(Handle_StepRepr_DataEnvironment*) &$self;
	}
};

%nodefaultctor StepRepr_Array1OfRepresentationItem;
class StepRepr_Array1OfRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_Array1OfRepresentationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_Array1OfRepresentationItem(const Handle_StepRepr_RepresentationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_RepresentationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepRepr_Array1OfRepresentationItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepRepr_Array1OfRepresentationItem & Assign(const StepRepr_Array1OfRepresentationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index);

};

%nodefaultctor StepRepr_ConfigurationDesignItem;
class StepRepr_ConfigurationDesignItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationDesignItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ConfigurationDesignItem();

};

%nodefaultctor StepRepr_MeasureRepresentationItem;
class StepRepr_MeasureRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_MeasureRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepBasic_MeasureValueMember &aValueComponent, const StepBasic_Unit &aUnitComponent);
		%feature("autodoc", "1");
		void SetMeasure(const Handle_StepBasic_MeasureWithUnit &Measure);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Measure() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_MeasureRepresentationItem();

};
%extend StepRepr_MeasureRepresentationItem {
	Handle_StepRepr_MeasureRepresentationItem GetHandle() {
	return *(Handle_StepRepr_MeasureRepresentationItem*) &$self;
	}
};

%nodefaultctor StepRepr_MaterialProperty;
class StepRepr_MaterialProperty : public StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		StepRepr_MaterialProperty();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_MaterialProperty();

};
%extend StepRepr_MaterialProperty {
	Handle_StepRepr_MaterialProperty GetHandle() {
	return *(Handle_StepRepr_MaterialProperty*) &$self;
	}
};

%nodefaultctor StepRepr_ItemDefinedTransformation;
class StepRepr_ItemDefinedTransformation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ItemDefinedTransformation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_RepresentationItem &aTransformItem1, const Handle_StepRepr_RepresentationItem &aTransformItem2);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetTransformItem1(const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem TransformItem1() const;
		%feature("autodoc", "1");
		void SetTransformItem2(const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem TransformItem2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ItemDefinedTransformation();

};
%extend StepRepr_ItemDefinedTransformation {
	Handle_StepRepr_ItemDefinedTransformation GetHandle() {
	return *(Handle_StepRepr_ItemDefinedTransformation*) &$self;
	}
};

%nodefaultctor StepRepr_PromissoryUsageOccurrence;
class StepRepr_PromissoryUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_PromissoryUsageOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_PromissoryUsageOccurrence();

};
%extend StepRepr_PromissoryUsageOccurrence {
	Handle_StepRepr_PromissoryUsageOccurrence GetHandle() {
	return *(Handle_StepRepr_PromissoryUsageOccurrence*) &$self;
	}
};

%nodefaultctor StepRepr_StructuralResponseProperty;
class StepRepr_StructuralResponseProperty : public StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		StepRepr_StructuralResponseProperty();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_StructuralResponseProperty();

};
%extend StepRepr_StructuralResponseProperty {
	Handle_StepRepr_StructuralResponseProperty GetHandle() {
	return *(Handle_StepRepr_StructuralResponseProperty*) &$self;
	}
};

%nodefaultctor StepRepr_MakeFromUsageOption;
class StepRepr_MakeFromUsageOption : public StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_MakeFromUsageOption();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Integer aRanking, const Handle_TCollection_HAsciiString &aRankingRationale, const Handle_StepBasic_MeasureWithUnit &aQuantity);
		%feature("autodoc", "1");
		Standard_Integer Ranking() const;
		%feature("autodoc", "1");
		void SetRanking(const Standard_Integer Ranking);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString RankingRationale() const;
		%feature("autodoc", "1");
		void SetRankingRationale(const Handle_TCollection_HAsciiString &RankingRationale);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Quantity() const;
		%feature("autodoc", "1");
		void SetQuantity(const Handle_StepBasic_MeasureWithUnit &Quantity);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_MakeFromUsageOption();

};
%extend StepRepr_MakeFromUsageOption {
	Handle_StepRepr_MakeFromUsageOption GetHandle() {
	return *(Handle_StepRepr_MakeFromUsageOption*) &$self;
	}
};

%nodefaultctor StepRepr_ConfigurationItem;
class StepRepr_ConfigurationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aId, const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_ProductConcept &aItemConcept, const Standard_Boolean hasPurpose, const Handle_TCollection_HAsciiString &aPurpose);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Id() const;
		%feature("autodoc", "1");
		void SetId(const Handle_TCollection_HAsciiString &Id);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept ItemConcept() const;
		%feature("autodoc", "1");
		void SetItemConcept(const Handle_StepRepr_ProductConcept &ItemConcept);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Purpose() const;
		%feature("autodoc", "1");
		void SetPurpose(const Handle_TCollection_HAsciiString &Purpose);
		%feature("autodoc", "1");
		Standard_Boolean HasPurpose() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepRepr_ConfigurationItem();

};
%extend StepRepr_ConfigurationItem {
	Handle_StepRepr_ConfigurationItem GetHandle() {
	return *(Handle_StepRepr_ConfigurationItem*) &$self;
	}
};