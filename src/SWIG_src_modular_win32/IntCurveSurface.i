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
%module IntCurveSurface

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


%include IntCurveSurface_dependencies.i


%include IntCurveSurface_headers.i


enum IntCurveSurface_TransitionOnCurve {
	IntCurveSurface_Tangent,
	IntCurveSurface_In,
	IntCurveSurface_Out,
	};



%nodefaultctor Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg;
class Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg();
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg();
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg(const Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg &aHandle);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg(const IntCurveSurface_SequenceNodeOfSequenceOfSeg *anItem);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	IntCurveSurface_SequenceNodeOfSequenceOfSeg* GetObject() {
	return (IntCurveSurface_SequenceNodeOfSequenceOfSeg*)$self->Access();
	}
};

%nodefaultctor Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt;
class Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt(const Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt(const IntCurveSurface_SequenceNodeOfSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	IntCurveSurface_SequenceNodeOfSequenceOfPnt* GetObject() {
	return (IntCurveSurface_SequenceNodeOfSequenceOfPnt*)$self->Access();
	}
};

%nodefaultctor IntCurveSurface_ThePolyhedronToolOfHInter;
class IntCurveSurface_ThePolyhedronToolOfHInter {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_ThePolyhedronToolOfHInter();
		%feature("autodoc", "1");
		IntCurveSurface_ThePolyhedronToolOfHInter();
		%feature("autodoc", "1");
		const Bnd_Box & Bounding(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		const Handle_Bnd_HArray1OfBox & ComponentsBounding(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		Standard_Integer NbTriangles(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Triangle(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Index, Standard_Integer & P1, Standard_Integer & P2, Standard_Integer & P3);
		%feature("autodoc", "1");
		const gp_Pnt & Point(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Integer TriConnex(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Triang, const Standard_Integer Pivot, const Standard_Integer Pedge, Standard_Integer & TriCon, Standard_Integer & OtherP);
		%feature("autodoc", "1");
		Standard_Boolean IsOnBound(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Index1, const Standard_Integer Index2);
		%feature("autodoc", "1");
		Standard_Real GetBorderDeflection(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Dump(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);

};

%nodefaultctor IntCurveSurface_Intersection;
class IntCurveSurface_Intersection {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_Intersection();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & Segment(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntCurveSurface_SequenceOfPnt;
class IntCurveSurface_SequenceOfPnt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceOfPnt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntCurveSurface_SequenceOfPnt();
		%feature("autodoc", "1");
		const IntCurveSurface_SequenceOfPnt & Assign(const IntCurveSurface_SequenceOfPnt &Other);
		%feature("autodoc", "1");
		void Append(const IntCurveSurface_IntersectionPoint &T);
		%feature("autodoc", "1");
		void Append(IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void Prepend(const IntCurveSurface_IntersectionPoint &T);
		%feature("autodoc", "1");
		void Prepend(IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntCurveSurface_IntersectionPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntCurveSurface_IntersectionPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & First() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntCurveSurface_IntersectionPoint &I);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor IntCurveSurface_IntersectionPoint;
class IntCurveSurface_IntersectionPoint {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_IntersectionPoint();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint(const gp_Pnt &P, const Standard_Real USurf, const Standard_Real VSurf, const Standard_Real UCurv, const IntCurveSurface_TransitionOnCurve TrCurv);
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt &P, const Standard_Real USurf, const Standard_Real VSurf, const Standard_Real UCurv, const IntCurveSurface_TransitionOnCurve TrCurv);
		%feature("autodoc", "1");
		void Values(gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, IntCurveSurface_TransitionOnCurve & TrCurv) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		Standard_Real U() const;
		%feature("autodoc", "1");
		Standard_Real V() const;
		%feature("autodoc", "1");
		Standard_Real W() const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition() const;
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntCurveSurface_HInter;
class IntCurveSurface_HInter : public IntCurveSurface_Intersection {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_HInter();
		%feature("autodoc", "1");
		IntCurveSurface_HInter();
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const IntCurveSurface_ThePolygonOfHInter &Polygon, const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const IntCurveSurface_ThePolygonOfHInter &ThePolygon, const Handle_Adaptor3d_HSurface &Surface, const IntCurveSurface_ThePolyhedronOfHInter &Polyhedron);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const IntCurveSurface_ThePolygonOfHInter &ThePolygon, const Handle_Adaptor3d_HSurface &Surface, const IntCurveSurface_ThePolyhedronOfHInter &Polyhedron, Bnd_BoundSortBox & BndBSB);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const Handle_Adaptor3d_HSurface &Surface, const IntCurveSurface_ThePolyhedronOfHInter &Polyhedron);

};

%nodefaultctor IntCurveSurface_TheHCurveTool;
class IntCurveSurface_TheHCurveTool {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_TheHCurveTool();
		%feature("autodoc", "1");
		IntCurveSurface_TheHCurveTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const Handle_Adaptor3d_HCurve &C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		void Intervals(const Handle_Adaptor3d_HCurve &C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Real Period(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Pnt Value(const Handle_Adaptor3d_HCurve &C, const Standard_Real U);
		%feature("autodoc", "1");
		void D0(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T);
		%feature("autodoc", "1");
		void D2(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T, gp_Vec & N);
		%feature("autodoc", "1");
		void D3(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		gp_Vec DN(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		Standard_Real Resolution(const Handle_Adaptor3d_HCurve &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Lin Line(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Circ Circle(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Elips Ellipse(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Hypr Hyperbola(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Parab Parabola(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve Bezier(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve BSpline(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const Handle_Adaptor3d_HCurve &C, const Standard_Real U0, const Standard_Real U1);
		%feature("autodoc", "1");
		void SamplePars(const Handle_Adaptor3d_HCurve &C, const Standard_Real U0, const Standard_Real U1, const Standard_Real Defl, const Standard_Integer NbMin, Handle_TColStd_HArray1OfReal & Pars);

};

%nodefaultctor IntCurveSurface_TheQuadCurvExactHInter;
class IntCurveSurface_TheQuadCurvExactHInter {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_TheQuadCurvExactHInter();
		%feature("autodoc", "1");
		IntCurveSurface_TheQuadCurvExactHInter(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc", "1");
		Standard_Real Root(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		void Intervals(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};

%nodefaultctor IntCurveSurface_TheHSurfaceTool;
class IntCurveSurface_TheHSurfaceTool {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_TheHSurfaceTool();
		%feature("autodoc", "1");
		IntCurveSurface_TheHSurfaceTool();
		%feature("autodoc", "1");
		Standard_Real FirstUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Real FirstVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Real LastUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Real LastVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Integer NbUIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Standard_Integer NbVIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void UIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void VIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface UTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface VTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsUPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Real UPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsVPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Real VPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Pnt Value(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void D0(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		void D2(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV);
		%feature("autodoc", "1");
		void D3(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV);
		%feature("autodoc", "1");
		gp_Vec DN(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		Standard_Real UResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		Standard_Real VResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_SurfaceType GetType(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Pln Plane(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Cylinder Cylinder(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Cone Cone(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Torus Torus(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Sphere Sphere(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface Bezier(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface BSpline(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Ax1 AxeOfRevolution(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Dir Direction(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve BasisCurve(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface BasisSurface(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Real OffsetValue(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);

};

%nodefaultctor IntCurveSurface_TheExactHInter;
class IntCurveSurface_TheExactHInter {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_TheExactHInter();
		%feature("autodoc", "1");
		IntCurveSurface_TheExactHInter(const Standard_Real U, const Standard_Real V, const Standard_Real W, const IntCurveSurface_TheCSFunctionOfHInter &F, const Standard_Real TolTangency, const Standard_Real MarginCoef=0.0);
		%feature("autodoc", "1");
		IntCurveSurface_TheExactHInter(const IntCurveSurface_TheCSFunctionOfHInter &F, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		void Perform(const Standard_Real U, const Standard_Real V, const Standard_Real W, math_FunctionSetRoot & Rsnld, const Standard_Real u0, const Standard_Real v0, const Standard_Real u1, const Standard_Real v1, const Standard_Real w0, const Standard_Real w1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const gp_Pnt & Point() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnCurve() const;
		%feature("autodoc", "1");
		void ParameterOnSurface(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		IntCurveSurface_TheCSFunctionOfHInter & Function();

};

%nodefaultctor IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter;
class IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter(const IntSurf_Quadric &Q, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter();

};

%nodefaultctor IntCurveSurface_ThePolygonToolOfHInter;
class IntCurveSurface_ThePolygonToolOfHInter {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_ThePolygonToolOfHInter();
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonToolOfHInter();
		%feature("autodoc", "1");
		const Bnd_Box & Bounding(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		Standard_Boolean Closed(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		Standard_Integer NbSegments(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		const gp_Pnt & BeginOfSeg(const IntCurveSurface_ThePolygonOfHInter &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		const gp_Pnt & EndOfSeg(const IntCurveSurface_ThePolygonOfHInter &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		void Dump(const IntCurveSurface_ThePolygonOfHInter &thePolygon);

};

%nodefaultctor IntCurveSurface_IntersectionSegment;
class IntCurveSurface_IntersectionSegment {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_IntersectionSegment();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment(const IntCurveSurface_IntersectionPoint &P1, const IntCurveSurface_IntersectionPoint &P2);
		%feature("autodoc", "1");
		void SetValues(const IntCurveSurface_IntersectionPoint &P1, const IntCurveSurface_IntersectionPoint &P2);
		%feature("autodoc", "1");
		void Values(IntCurveSurface_IntersectionPoint & P1, IntCurveSurface_IntersectionPoint & P2) const;
		%feature("autodoc", "1");
		void FirstPoint(IntCurveSurface_IntersectionPoint & P1) const;
		%feature("autodoc", "1");
		void SecondPoint(IntCurveSurface_IntersectionPoint & P2) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & FirstPoint() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & SecondPoint() const;
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntCurveSurface_ThePolygonOfHInter;
class IntCurveSurface_ThePolygonOfHInter {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_ThePolygonOfHInter();
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonOfHInter(const Handle_Adaptor3d_HCurve &Curve, const Standard_Integer NbPnt);
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonOfHInter(const Handle_Adaptor3d_HCurve &Curve, const Standard_Real U1, const Standard_Real U2, const Standard_Integer NbPnt);
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonOfHInter(const Handle_Adaptor3d_HCurve &Curve, const TColStd_Array1OfReal &Upars);
		%feature("autodoc", "1");
		const Bnd_Box & Bounding() const;
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation() const;
		%feature("autodoc", "1");
		void SetDeflectionOverEstimation(const Standard_Real x);
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const gp_Pnt & BeginOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt & EndOfSeg(const Standard_Integer TheIndex) const;
		%feature("autodoc", "1");
		Standard_Real InfParameter() const;
		%feature("autodoc", "1");
		Standard_Real SupParameter() const;
		%feature("autodoc", "1");
		Standard_Real ApproxParamOnCurve(const Standard_Integer Index, const Standard_Real ParamOnLine) const;
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntCurveSurface_SequenceNodeOfSequenceOfSeg;
class IntCurveSurface_SequenceNodeOfSequenceOfSeg : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceNodeOfSequenceOfSeg(const IntCurveSurface_IntersectionSegment &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IntCurveSurface_SequenceNodeOfSequenceOfSeg();

};
%extend IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg GetHandle() {
	return *(Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg*) &$self;
	}
};

%nodefaultctor IntCurveSurface_SequenceOfSeg;
class IntCurveSurface_SequenceOfSeg : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceOfSeg();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntCurveSurface_SequenceOfSeg();
		%feature("autodoc", "1");
		const IntCurveSurface_SequenceOfSeg & Assign(const IntCurveSurface_SequenceOfSeg &Other);
		%feature("autodoc", "1");
		void Append(const IntCurveSurface_IntersectionSegment &T);
		%feature("autodoc", "1");
		void Append(IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		void Prepend(const IntCurveSurface_IntersectionSegment &T);
		%feature("autodoc", "1");
		void Prepend(IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntCurveSurface_IntersectionSegment &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntCurveSurface_IntersectionSegment &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & First() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntCurveSurface_IntersectionSegment &I);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor IntCurveSurface_TheCSFunctionOfHInter;
class IntCurveSurface_TheCSFunctionOfHInter : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheCSFunctionOfHInter(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		const gp_Pnt & Point() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurve & AuxillarCurve() const;
		%feature("autodoc", "1");
		virtual		~IntCurveSurface_TheCSFunctionOfHInter();

};

%nodefaultctor IntCurveSurface_TheInterferenceOfHInter;
class IntCurveSurface_TheInterferenceOfHInter : public Intf_Interference {
	public:
		%feature("autodoc", "1");
		~IntCurveSurface_TheInterferenceOfHInter();
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter();
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Perform(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Perform(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Interference(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Interference(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);

};

%nodefaultctor IntCurveSurface_SequenceNodeOfSequenceOfPnt;
class IntCurveSurface_SequenceNodeOfSequenceOfPnt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceNodeOfSequenceOfPnt(const IntCurveSurface_IntersectionPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IntCurveSurface_SequenceNodeOfSequenceOfPnt();

};
%extend IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt GetHandle() {
	return *(Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt*) &$self;
	}
};