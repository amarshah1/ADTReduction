
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
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (= l0 Nil)) )
(assert (= l3 l1) )
(assert (or (= l3 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(check-sat)