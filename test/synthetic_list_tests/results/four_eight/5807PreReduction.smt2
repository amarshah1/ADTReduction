
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
(assert (or (= l1 Nil) (is-Cons l1) (= l1 l2)) )
(assert (= l3 l2) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons l3) (= l3 l2)) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(check-sat)
