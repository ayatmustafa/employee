<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use Auth;
use File;
class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employee=Employee::paginate(6);
        return view("index",compact("employee"));
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::user()){
            return view('create');
        }
        Session()->flash('message', 'plz login  !');
        return back();

        //return redirect("/employee/create/");

        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            "name"=>'bail|required|string|max:255',
            "position"=>'bail|required|string|max:255',
            "about"=>'bail|required|string|max:1700',
            "img"=>'bail|required|image|mimes:jpeg,jpg,png,gif|required|max:10000',
            "join_date"=>'required|date_format:"Y-m-d"'
        ]);

       $name= $request->name;
       $position= $request->position;
       $about= $request->about;
       $join_date=$request->join_date;
       //to tack request of file img
       $img=$request->file("img");
       //get extentio of img
       $extn=$img->getClientOriginalExtension();
       //creat new name for img
       $newame=uniqid().'.'.$extn;
       //verfy destnation name
       $desnation="images";
       //but img that have old featcher with new name in this derction
       $img->move( $desnation,$newame);


       $employee=new Employee();
       $employee->name=$name;
       $employee->position=$position;
       $employee->about=$about;
       $employee->img=$newame;
       $employee->join_date=$join_date;

       $employee->save();
       Session()->flash('message', 'employee added succesfully!');
        return redirect("/employee/show/".$employee->id);
       // return back()->withInput();
        //
    }
    public function delete($id){
        if(Auth::user()){
        $employee=Employee::findOrFail($id);
        File::delete("images/".$employee->img);
        $employee->delete();
        Session()->flash('message', 'employee '.$employee->name.' deleted succesfully!');
       return redirect("/");
        }
        Session()->flash('message', 'plz login  !');
        return back();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id){

    //keda hegeb 2wal row lw mogoed lw l2 betala3 error 404
        $employee=Employee::where("id","=",$id)->firstOrFail();
        //or $employee=Employee::findOrFail($id);
        return view("show",compact("employee"));


        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        if(Auth::user()){   $employee=Employee::where("id","=",$id)->first();
        return view("edit",compact("employee"));
        }
        Session()->flash('message', 'plz login  !');
        return back();


        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            "name"=>'bail|required|string|max:255',
            "position"=>'bail|required|string|max:255',
            "about"=>'bail|required|string|max:1700',
            "img"=>'nullable|image|mimes:jpeg,jpg,png,gif|max:10000',
            "join_date"=>'required|date_format:"Y-m-d"'
        ]);
        $employee=Employee::findOrFail($id);
        if($request->hasFile("img")){
            //to tack request of file img
            $img=$request->file("img");
            //get extentio of img
            $extn=$img->getClientOriginalExtension();
            //creat new name for img
            $newame=uniqid().'.'.$extn;
            //verfy destnation name
            $desnation="images";
            //but img that have old featcher with new name in this derction
            $img->move( $desnation,$newame);

            $employee->img=$newame;
            $oldimg=$request->oldimg;
            File::delete("images/".$oldimg);
        }
        $name=$request->name;
        $position=$request->position;
        $about=$request->about;
        $join_date=$request->join_date;
        $employee->name=$name;
        $employee->position=$position;
        $employee->about=$about;
        $employee->join_date=$join_date;
        $employee->save();
        Session()->flash('message', 'employee updated succesfully!');
        return redirect("/employee/show/".$employee->id);

        //
    }
    public function search(Request $request)
    {

        //dd($request->all());
        $string=$request->string;
        $employee=Employee::where("name","like","$string%")->paginate(6);
        Session()->flash('message', 'employee that searched '.$string.' succesfully!');
        return view("search",compact("employee"));

    }
    function searchkey($searchkey=null){
        $employee=Employee::where("name","like","$searchkey%")->paginate(6);
        Session()->flash('message', 'employee that searched '.$searchkey.' succesfully!');
        return $employee;

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        if(Auth::user()){
        $employee=Employee::orderBy('id', 'desc')->paginate(6);
        return view("deletemultuble",compact("employee"));
        }
        Session()->flash('message', 'plz login  !');
        return back();


    }
    public function deletemore()
    {
        //  return \request("img");
        if(Auth::user()){
          Session()->flash('message', 'employee '.implode(" & ",request("name")).' deleted succesfully!');
            $employee=Employee::destroy(request("id"));

            foreach(request("img") as $img){
                File::delete("images/".$img);
            }

            return redirect("employee/destroy");
        }
        Session()->flash('message', 'plz login  !');
        return back();


    }

}
