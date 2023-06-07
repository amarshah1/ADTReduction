
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
(assert (and (= l1 Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l1 l1)) )
(assert (or (= l0 Nil) (= l3 Nil) (is-Cons l0)) )
(assert (and (= l1 l3) (= l1 Nil) (= l2 Nil) (= l1 l0)) )
(check-sat)
