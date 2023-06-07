
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
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 l2) (= l0 Nil)) )
(assert (or (= l3 Nil) (is-Nil l1)) )
(assert (and (= l1 l2) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Cons l0) (is-Cons Nil)) )
(check-sat)
