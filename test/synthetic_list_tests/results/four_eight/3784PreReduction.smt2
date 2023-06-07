
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Nil Nil) )
(assert (and (= l2 l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l2)) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 l3) (= l3 Nil) (is-Cons Nil)) )
(assert (= l2 l1) )
(assert (and (= l1 l1) (= l1 Nil) (= l0 Nil)) )
(check-sat)
