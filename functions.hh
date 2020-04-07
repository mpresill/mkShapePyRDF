#ifndef FUNCTIONS_HH
#define FUNCTIONS_HH

using namespace ROOT::VecOps;
#include "TLorentzVector.h"

float Whad_pt(int category, RVec<int> & V_jets, RVec<float> & CleanJet_pt,RVec<float> & CleanJet_eta, 
                RVec<float> & CleanJet_phi, RVec<float> & Jet_mass, RVec<int> & CleanJet_jetIdx)
{
    if (category != 1) return -999.;
    
    TLorentzVector vjet1; 
    vjet1.SetPtEtaPhiM(CleanJet_pt.at(V_jets.at(0)),
                    CleanJet_eta.at(V_jets.at(0)),
                    CleanJet_phi.at(V_jets.at(0)),
                    Jet_mass.at(CleanJet_jetIdx.at(V_jets.at(0))));

    TLorentzVector vjet2; 
    vjet2.SetPtEtaPhiM(CleanJet_pt.at(V_jets.at(1)),
                    CleanJet_eta.at(V_jets.at(1)),
                    CleanJet_phi.at(V_jets.at(1)),
                    Jet_mass.at(CleanJet_jetIdx.at(V_jets.at(1))));

    return (vjet1+vjet2).Pt();

    
}


#endif