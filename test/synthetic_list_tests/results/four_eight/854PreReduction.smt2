
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
(assert (is-Nil l3) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l1)) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (= l2 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (= l1 l2) )
(assert (or (= l0 l3) (= l2 l3) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
