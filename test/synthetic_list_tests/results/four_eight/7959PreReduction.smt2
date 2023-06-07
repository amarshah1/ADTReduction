
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
(assert (is-Nil l3) )
(assert (or (= l3 Nil) (= l2 l3) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l2 l3) (is-Cons Nil) (= l2 l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons l1)) )
(check-sat)
