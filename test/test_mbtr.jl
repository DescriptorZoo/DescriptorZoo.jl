@testset "Testing MBTR Representation with dc Si" begin
@info("Testing MBTR Representation for dc Si.")
using DescriptorZoo, JuLIP, Test

at = bulk(:Si, cubic=true)
desc = mbtr(at)
mbtr_ref = [
       6.9496778788414781e-01,
       7.1986220284027114e-01,
       7.3354857103049786e-01,
       7.3666491362136577e-01,
       7.3044762991316925e-01,
       7.1649441177128370e-01,
       6.9649901670096226e-01,
       6.7200606559977982e-01,
       6.4422928693791326e-01,
       6.1396345774896632e-01,
       5.8160117982024029e-01,
       5.4724434055754667e-01,
       5.1088099007051713e-01,
       4.7258543971849859e-01,
       4.3269540091997261e-01,
       3.9192569929718940e-01,
       3.5139206883965507e-01,
       3.1253747322315001e-01,
       2.7697310097245148e-01,
       2.4626260205440162e-01,
       2.2168837199196242e-01,
       2.0404146122179259e-01,
       1.9347226369615067e-01,
       1.8942888993870177e-01,
       1.9069597290259666e-01,
       1.9553067571537033e-01,
       2.0187700957831695e-01,
       2.0762645100533930e-01,
       2.1088450453095892e-01,
       2.1020118590035677e-01,
       2.0472935788111615e-01,
       1.9428785263606121e-01,
       1.7932399339294011e-01,
       1.6078869816994643e-01,
       1.3995256578723689e-01,
       1.1819976052859571e-01,
       9.6836522223254493e-02,
       7.6943433911371095e-02,
       5.9287846045598072e-02,
       4.4298754123766174e-02,
       3.2094480531120281e-02,
       2.2546050707531993e-02,
       1.5356935355672306e-02,
       1.0142102152565563e-02,
       6.4943824952075910e-03,
       4.0321099048365632e-03,
       2.4272265052827208e-03,
       1.4166771385286556e-03,
       8.0170343488886913e-04,
       4.3988429175749678e-04,
       2.3401514207793466e-04,
       1.2070688477923311e-04,
       6.0367240455477009e-05,
       2.9271955306051653e-05,
       1.3762052062538477e-05,
       6.2732939120686559e-06,
       2.7726111754441095e-06,
       1.1881276847952497e-06,
       4.9364868828203077e-07,
       1.9886277542685130e-07,
       7.7672905494426746e-08,
       2.9414810799660235e-08,
       1.0800476431045606e-08,
       3.8450325381032670e-09,
       1.3272030624847988e-09,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       0.0000000000000000e+00,
       1.2398167472199218e-04,
       2.0466965823382139e-04,
       3.3061207241311385e-04,
       5.2173848485611489e-04,
       8.0094009760583779e-04,
       1.1899435089817198e-03,
       1.7035053236855724e-03,
       2.3441813321358261e-03,
       3.1009483013927528e-03,
       3.9545161634549318e-03,
       4.8899112139089628e-03,
       5.9133597846795141e-03,
       7.0668491984957685e-03,
       8.4314424400194384e-03,
       1.0111020521181869e-02,
       1.2193069865332386e-02,
       1.4692894495666737e-02,
       1.7499888137509644e-02,
       2.0353055031603211e-02,
       2.2869855093105729e-02,
       2.4633725130110831e-02,
       2.5317115164213068e-02,
       2.4793837213310951e-02,
       2.3192772531288913e-02,
       2.0868780277482388e-02,
       1.8303511496475900e-02,
       1.5977201757051088e-02,
       1.4257195930872905e-02,
       1.3331644622708305e-02,
       1.3192932812138475e-02,
       1.3660594425678267e-02,
       1.4431816164603270e-02,
       1.5151385256259876e-02,
       1.5492278430193351e-02,
       1.5231225266263989e-02,
       1.4297925443659779e-02,
       1.2780983788951015e-02,
       1.0889283804535254e-02,
       8.8861144078574011e-03,
       7.0233923526266361e-03,
       5.4988368908542662e-03,
       4.4434391768754886e-03,
       3.9297916162201411e-03,
       3.9832623543391305e-03,
       4.5816420042560837e-03,
       5.6419071831224138e-03,
       7.0071435486950030e-03,
       8.4531220907505273e-03,
       9.7269400243558211e-03,
       1.0611971687423156e-02,
       1.0994671163099179e-02,
       1.0902061669702406e-02,
       1.0489646076980672e-02,
       9.9821047964225289e-03,
       9.5903851746582964e-03,
       9.4377295304821206e-03,
       9.5215457809027897e-03,
       9.7228581543024953e-03,
       9.8573486302087846e-03,
       9.7472439130392233e-03,
       9.2859442661513743e-03,
       8.4708227519770026e-03,
       7.3939955443089889e-03,
       6.1999404901693931e-03,
       5.0325661627771412e-03,
       3.9953700625636581e-03,
       3.1374375752149155e-03,
       2.4631659427485192e-03,
       1.9536325377179468e-03,
       1.5863710138811391e-03,
       1.3457544477740399e-03,
       1.2231373935468047e-03,
       1.2104996217773907e-03,
       1.2926302382092784e-03,
       1.4420095041531046e-03,
       1.6188292358654966e-03,
       1.7766316270724227e-03,
       1.8719822636020650e-03,
       1.8748519980087389e-03,
       1.7757892555370336e-03,
       1.5870889798633835e-03,
       1.3376348109504447e-03,
       1.0636595744390671e-03,
       7.9902381402190408e-04,
       5.6822246901199369e-04,
       3.8366975535995037e-04,
       2.4690734482912038e-04,
       1.5212987305029596e-04,
       9.0171398219280604e-05,
       5.1629948778467158e-05,
       2.8628346186686757e-05,
       1.5372481389457191e-05,
       7.9716621968390962e-06,
       3.9724906391045570e-06,
       1.8907325837018450e-06,
       8.5416133369256520e-07,
       3.6420537297391663e-07,
       1.4588838652304635e-07,
       5.4698430242977022e-08,
       1.9143156223214137e-08,
]
mbtr_now = vcat(desc[:]...)
tst = [isapprox(mbtr_now[x], mbtr_ref[x]; atol=1e-8) for x=1:length(mbtr_ref)]
println(@test all(tst))
end
