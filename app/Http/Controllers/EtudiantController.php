<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiant = Etudiant::Select()
        ->paginate(15); //5 données par page

        return view('etudiant.index', ['etudiants' => $etudiant]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();
        return view('etudiant.create', ['villes' => $villes]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $newStudent = Etudiant::create([
            'nom'           => $request->nom,
            'adresse'       => $request->adresse,
            'phone'         => $request->phone,
            'email'         => $request->email,
            'dateNaissance' => $request->dateNaissance,
            'ville_id'      => $request->ville_id,
        ]);

        return $newStudent;
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show', ['etudiant' => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        $villes = Ville::all();
        return view('etudiant.edit', ['villes' => $villes, 'etudiant' => $etudiant]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $etudiant->update([
            'nom'           => $request->nom,
            'adresse'       => $request->adresse,
            'phone'         => $request->phone,
            'email'         => $request->email,
            'dateNaissance' => $request->dateNaissance,
            'ville_id'      => $request->ville_id
        ]);
        
        return redirect(route('etudiant.show', $etudiant->id))->withSuccess('Donnée mise à jour');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();

        return redirect(route('etudiant.index'))->withSuccess("L'enregistrement de cet étudiant a bien été supprimée !");
    }

}
