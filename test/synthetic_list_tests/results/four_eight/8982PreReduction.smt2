
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
(assert (or (= l3 Nil) (= l2 l1) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (not (= l2 l2)) )
(assert (not (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l2 l3) (is-Cons Nil)) )
(check-sat)
