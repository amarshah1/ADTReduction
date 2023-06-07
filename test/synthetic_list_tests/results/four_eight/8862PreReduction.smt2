
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
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Nil l1)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 l1)) )
(assert (and (is-Cons l2) (= l2 l2) (is-Cons Nil) (is-Cons l2)) )
(check-sat)
