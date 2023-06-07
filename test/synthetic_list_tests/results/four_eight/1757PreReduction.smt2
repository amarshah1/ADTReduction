
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
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l3) (= l1 Nil) (= l0 Nil)) )
(assert (= l2 l3) )
(assert (and (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)
