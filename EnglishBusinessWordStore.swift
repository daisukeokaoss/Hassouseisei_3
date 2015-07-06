//
//  EnglishPhysicalWordStore.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/07/05.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class EnglishBusinessWordStore: WordStore {
    override func returnCaption() -> String{
        return "Business Word"
    }
    
    override func ReturningWordArray() -> Array<String>{
        var ReturnWordArray:[String] = []
        
        //http://ejje.weblio.jp/category/business/a
        
        var wordStore = ["a book of contracts","a director-employee","a domestic corporation","a non-permanent resident","a non-resident","a parent company","Ａ type Ｖ beltings",
            "a very prudent fiduciary decision","A&H","A&H model","A&H model law","A&I","A&S","A. M. Best Company","A.S.T.M. colorimeters for petroleum products","A/C",
            "A1949-52 Tables for Assured Lives","AA","AAA","AABD","AABF","AAHA","AAHP","AAI","AAII","AAIM","AAL","AALCO","AALTCI","AALU","AAMGA","Aaphalt concrete","AAPPO",
            "AARP","AATIC","ABA","Abaca","Abacuses","Abalones","Abandoned","abandonment","abatement","Abdominal belts","Abdominal corsets","Abdominal pads","Abdominal ultrasound imaging equipment",
            "Abemaki bark","ABHC","ABI","ABIA","ABIC","Abies oil","ability development","ability to pay principle","ability-based personnel management","ability-based personnel transfer",
            "ABMT","abnormality","ABO","abortion","Abrading instruments","Abrasion","Abrasion resistant hoses","Abrasion testing machines","Abrasive basic products, natural and artificially manufactured",
            "Abrasive cements","Abrasive cloth","Abrasive cloth belts","Abrasive cloth discs","Abrasive cloth rolls","Abrasive cloth sheets","Abrasive cloths","Abrasive combination belts",
            "Abrasive combination discs","Abrasive combination rolls","Abrasive combination sheets","Abrasive combinations","Abrasive compounds for technical purpose","Abrasive cutting machines",
            "Abrasive fibre belts","Abrasive fibre discs","Abrasive fibre rolls","Abrasive fibre sheets","Abrasive fibres","Abrasive pads for kitchen purposes","Abrasive paper",
            "Abrasive pater belts","Abrasive pater discs","Abrasive pater rolls","Abrasive pater sheets","Abrasive paters","Abrasive roller type rice whitening machines",
            "Abrasive roller type/ friction type rice whitening machines","Abrasive sponges for scrubbing the skin","Abrasives","abridged life table","ABS","absence","absence without notice",
            "absenteeism","absenteeism rate","Absolute alcohol","absolute assignment","absolute beneficiary","absolute designation","absolute merit rating","Absorbable surgical sutures",
            "Absorbent cotton","Absorbent cottons","Absorbent gauzes","Absorbent paper for tobacco pipes","Absorbent wadding","Absorber sets","Absorption spectrophotometric analyzers",
            "Absorption type","Absorption type refrigerating machines","Absorptives","abstainee","abstainer","abstention requirement","abstentionist","abstinence","abstinency",
            "abuse","Ac","AC","AC adapters","AC generators","AC motors","AC servomotors","AC small motors","AC watt-hour meters","AC-DC transducers","ACA","Acacia","Acacia trees",
            "academic insurance researcher","academic risk and insurance researcher","Academies","Academy of Life Underwriting","Academy of Producer Insurance Studies",
            "Acaricides","ACAS","ACB","acc","accelerated accrual","accelerated benefit","accelerated benefit option","accelerated benefit plan","accelerated benefit provision",
            "accelerated benefit provisions","accelerated benefits","accelerated benefits option","accelerated benefits plan","accelerated benefits provision","accelerated benefits provisions",
            "accelerated cash benefits","accelerated cost recovery system","accelerated death benefit","accelerated death benefit option","accelerated death benefit plan",
            "accelerated death benefit provision","accelerated death benefit provisions","accelerated death benefits","accelerated death benefits option","accelerated death benefits plan",
            "accelerated death benefits provision","accelerated death benefits provisions","accelerated depreciation","accelerated endowment","accelerated endowment plan",
            "Accelerated License Evaluation Review Techniques","accelerated paid-up","accelerated paid-up plan","accelerated payment of death benefits","accelerated, pre-death benefit option",
            "accelerating benefit option","accelerating benefits option","accelerating death benefit option","accelerating death benefits option","acceleration","acceleration benefit option",
            "acceleration benefits option","acceleration clause","acceleration death benefit option","acceleration death benefits option","acceleration-of-benefit provision",
            "acceleration-of-benefit provisions","acceleration-of-benefits provision","acceleration-of-benefits provisions","accelerative endowment","accelerative endowment plan",
            "accelerative paid-up","accelerative paid-up plan","Accelerometers","accept foreign workers","acceptance","accepting company","accepting house","accepting house committee",
            "access","Access and Benefit Sharing","Access to Medical Reports Act","accessibility of medical care","accession rate","Accessories","Accessories and components of metal working machinery",
            "Accessories and parts for audio and video frequency equipment","Accessories and parts for public address systems","Accessories and parts of compound sanitary equipment",
            "Accessories and parts of motion picture projection equipment","Accessories for absorption spectrophotometric analyzers","Accessories for camera equipment",
            "Accessories for closed circuit television","Accessories for electrical titrators","Accessories for electrode type concentration measuring instruments",
            "Accessories for electrolytic analyzers and coulometric analyzers","Accessories for electron applied analyzers","Accessories for emission spectrophotometric analyzers",
            "Accessories for endoscopes","Accessories for gas chromatographs","Accessories for liquid chromatographs","Accessories for magnetic resonance instruments",
            "Accessories for mass spectrometers","Accessories for microphone equipment","Accessories for microscope apparatus,n.e.c.","Accessories for microscopes",
            "Accessories for motion picture cameras","Accessories for photoelectric photometers and colorimeter","Accessories for polarimetric analyzers","Accessories for polarographs",
            "Accessories for secondary photon process spectrophotometers","Accessories for specific conductivity meters","Accessories for still camera","accessories for thermal analyzers",
            "Accessories for thermal measuring instruments","Accessories for twin layer chromatographs","Accessories for X-ray analyzers","Accessories of containers",
            "Accessories of electricity meters","Accessories of explosives","Accessories of fasteners","Accessories of Japanese clothings","Accessories of Japanese clothings, n.e.c.",
            "Accessories of launcher","Accessories of low frequency electric therapy equipment","Accessories of motion picture sound recording equipment",
            "Accessories of precision measuring machines and instruments","Accessories of samll arms ammunition","Accessories of shell","Accessories used for bearing","Accessories, n.e.c.",
            "Accessory brush for machine","accident","accident and health benefit","accident and health insurance","accident and health line","accident and sickness insurance",
            "accident frequency rate","accident hazard","accident insurance","Accident insurance underwriting","accident prevention advisory committee","accident severity rate",
            "accidental death","accidental death benefit","accidental death benefit rider","accidental death insurance","accidental death rate","accidental injury",
            "accidental injury and permanent disability cover","accidental means","accommodation","Accommodation bureaux","Accommodation ladders","Accommodation ladders with fixed steps",
            "Accommodation ladders with levelled steps","Accommodation ladders with turn tables","accommodation line","Accordions","account","account balance","account balance pension plan",
            "Account based pension","Account books","account current","account executive","account receivable - other","account rigging","Account slip pads",
            "Account slip pads and delivery or order slip pads","Account stamps","account value","accountability","accountancy","accountant","Accounterments","accounting",
            "Accounting","Accounting and Reporting by Retirement Benefit Plans","Accounting Care Organization","accounting estimatets","accounting firm","accounting for inflation",
            "accounting for life insurance companies","accounting for pension costs","accounting information","Accounting machines","Accounting on tabulating machines",
            "accounting policies","accounting policy","Accounting Principle Board","accounting standards","Accounting Standards Board","Accounting Standards Board of Japan",
            "Accounting Standards Committee","accounting system","Accounts and Statements Rules","accounts payable-trade","accounts receivable from subsidiaries and affiliates-trade",
            "accounts receivable-trade","Accreditation Program","accredited investor","accrual","accrual account","accrual accounting basis","accrual based expense and liability",
            "accrual basis","accrual bonds","accrual of benefit","accrual of pension benefit","accrual rate","accrued account","accrued benefit","accrued benefit cost method",
            "accrued benefit method","accrued business office taxes","accrued charge","accrued expenses","accrued expenses in the previous year, currently deductible",
            "accrued expenses, currently not deductible","accrued future service benefit","accrued future service benefits","accrued income","accrued interest","accrued liability",
            "accrued pension right","accrued pension rights","accrued premium","accrued right","accrued right premium","accrued salary","accrued service","accrued vacation payable",
            "accrued vacation payable in the previous year, currently deductible","accrued vacation payable, currently not deductible","acct","accumulated benefit",
            "accumulated benefit obligation","accumulated capital","accumulated contributions","accumulated depreciation","accumulated dividend","accumulated earnings",
            "accumulated interest","accumulated surplus","accumulated value","accumulated-debt problem","Accumulating machines","accumulating with-profit products",
            "accumulation","accumulation and retirement product","accumulation annuity","accumulation benefit","accumulation clause","accumulation device","accumulation fund",
            "accumulation life stage","accumulation method","accumulation of social overhead capital","accumulation period","accumulation product","accumulation side fund",
            "accumulation type policy","accumulation type product","accumulation unit","accumulation value","accumulative single premium retirement annuity",
            "Accumulator boxes","Accumulator jars","Accumulators, electric","Accumulators, electric, for vehicles","accusation","ACD","ACE","Acenaphthene","Acetaldehyde",
            "Acetanilide","Acetate","Acetate circular knit fabrics","Acetate fabrics","Acetate filament fabrics","Acetate filament yarn","Acetate of cellulose, unprocessed",
            "Acetate of fusel oil","Acetate tapes","Acetate warp knit fabrics","Acetate yarn","Acetates","Acetates for pharmaceutical purposes","Acetic acid","Acetic anhydride",
            "Aceticacid cellulose excelsior","Aceto-acetanilide","Acetoacet-o-chloroanilide","Acetoacet-o-tuluidide","Acetone","Acetones","Acetyl eugenol","Acetyl isoeugenol",
            "Acetyl Nitrocellulose","Acetyl-nitrocellulose","Acetylcholine, derivatives and preparations","Acetylene","Acetylene black","Acetylene burners",
            "Acetylene cleaning apparatus","Acetylene flares","Acetylene gas generators","Acetylene generators","Acetylene tetrachloride","ACH","ACHA","achieve high economic growth",
            "achieved profit","achieved profit method","achievement allowance","achievement appraisal","achievement in cutting down major injuries","Achillea plants",
            "Achimenes","Achimenes seeds","Achromat objective","Acid beverages, manufactured from milk or dairy products","Acid dye type pigments","Acid dyes","Acid hydrometers",
            "Acid mordant dyes","Acid or alkali proof tanks","Acid preparations","Acid preparations; limonade of citric acid, etc.","Acid proof chemical compositions","Acidimeters for batteries",
            "Acids","Acids for pharmaceutical purposes","Acids, anhydrides, non-cyclic and salt of non-cyclic organic acids","Acids, non-cyclic","Acidulated water for recharging accumulators",
            "Acidulated water for recharging batteries","ACII","Acintillation cameras","acknowledgment","ACL","ACLI","ACO","ACOEM","Aconitine","Aconitum","Acoustic acoustmeters",
            "Acoustic alarms","Acoustic conduits","Acoustic couplers","Acoustic emission equipment","Acoustic stimulators","Acoustic vibration testing machines","Acoustmeters",
            "ACP","ACP test","acquire shares","acquisition","acquisition commission","acquisition commissions","acquisition cost","acquisition value","acreage reduction policies",
            "Acridin, derivatives and preparations","Acridine derivatives and preparations; acrinol, etc.","Acridine, derivatives and preparations; acrinamine, etc.",
            "Acrilo-nitrile circular knit fabrics","Acrilo-nitrile filament fabrics","Acrilo-nitrile warp fabrics","Acrilo-nitrile weft knit fabrics","Acrolein","ACRS",
            "Acrylate-butadiene rubber","Acrylic","Acrylic denture base resins","Acrylic filament yarn","Acrylic resin adhesives","Acrylic resin clear","Acrylic resin emulsion adhesives",
            "Acrylic resin enamel","Acrylic resin paints","Acrylic resin paints, air type","Acrylic resin paints, baking type","Acrylic resin priming coat","Acrylic resin teeth",
            "Acrylic resins","Acrylic resins for crowns","Acrylic resins, unprocessed","Acrylic rubber","Acrylic yarn","Acrylonitrile","Acrylonitrile-butadien rubber adhesives",
            "Acrylonitrile-butadiene rubber","Acrylonitrile-butadiene rubber adhesives","Acrylonitrile-butadiene rubber latex adhesives","ACS","act","ACT","act of dispute",
            "act of God","Act on Stabilization of Supply","ACTA","Actinium","Actinometers","Actinomycin D and preparations","action","action in damages","Actions","Activated carbons",
            "active","active bond crowd","active employee","active investment","active life","active life reserve","active management","Active rudders","active stock","activity of daily living",
            "actual authority","actual cash value","actual contribution percentage","actual cost","actual cost of living","actual death","actual death strain","actual deferral percentage",
            "actual insurance","actual liquidation value","actual pension cost","actual return on plan assets","actual strain","actual working hours","actuarial appraisal",
            "Actuarial Approach for Financial Risks","actuarial assumption","actuarial calculation factor","actuarial consultant","actuarial cost method","actuarial deficiency",
            "actuarial funding method","actuarial gain or loss","actuarial guideline","actuarial increase","actuarial investigation","actuarial liability","actuarial mathematics",
            "actuarial methodology","Actuarial Opinion and Memorandum","actuarial present value","actuarial principle","actuarial profession","actuarial rating","actuarial reduction",
            "actuarial report","Actuarial Research Clearing House","actuarial revaluation","actuarial science",]
        
        ReturnWordArray += wordStore
        
        return ReturnWordArray
        
    }
   
}
